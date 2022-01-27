/// steam_lobby_chat.cpp
#include "steam_glue.h"

struct steam_lobby_message {
	uint8_t* data;
	size_t size;
	int lifetime;
};

struct {
	vector<steam_lobby_message> arr{};
	int offset = 0;
} static chat_messages;


void steam_lobby_chat_update() {
	size_t removeCount = 0;
	auto& arr = chat_messages.arr;
	auto count = arr.size();
	for (size_t i = 0u; i < count; i++) {
		if (--arr[i].lifetime <= 0) {
			//trace("Freeing message %d", i);
			delete arr[i].data;
			arr[i].data = nullptr;
			removeCount = i + 1;
		}
	}
	if (removeCount > 0) {
		arr.erase(arr.begin(), arr.begin() + removeCount);
		chat_messages.offset += (int)removeCount;
	}
}

///
#define steam_lobby_max_chat_message_size 4096

///
dllg bool steam_lobby_send_chat_message(const char* text) {
	if (!steam_lobby_current.IsValid()) return 0;
	return SteamMatchmaking()->SendLobbyChatMsg(steam_lobby_current, text, strlen(text) + 1);
}

dllg double steam_lobby_send_chat_message_buffer(gml_buffer buf, int size = -1) {
	if (size < 0) {
		size = buf.tell();
	} else if (size > buf.size()) {
		size = buf.size();
	}
	return SteamMatchmaking()->SendLobbyChatMsg(steam_lobby_current, buf.data(), size);
}

///
dllx const char* steam_lobby_get_chat_message_text(double message_index) {
	message_index -= chat_messages.offset;
	if (message_index < 0 || message_index >= chat_messages.arr.size()) return "";
	return (const char*)chat_messages.arr[(size_t)message_index].data;
}

///
dllx double steam_lobby_get_chat_message_size(double message_index) {
	message_index -= chat_messages.offset;
	if (message_index < 0 || message_index >= chat_messages.arr.size()) return -1;
	return chat_messages.arr[(size_t)message_index].size;
}

dllg bool steam_lobby_get_chat_message_data(int64_t message_index, gml_buffer buf) {
	message_index -= chat_messages.offset;
	if (message_index < 0 || message_index >= chat_messages.arr.size()) return false;
	auto& msg = chat_messages.arr[(size_t)message_index];
	auto size = msg.size;
	if (size > (size_t)buf.size()) size = (size_t)buf.size();
	memcpy(buf.data(), msg.data, size);
	return true;
}

void steam_net_callbacks_t::lobby_chat_message(LobbyChatMsg_t* e) {
	steam_lobby_message msg{};
	static uint8_t data[steam_lobby_max_chat_message_size];
	auto size = SteamMatchmaking()->GetLobbyChatEntry(e->m_ulSteamIDLobby, e->m_iChatID, nullptr, &data, sizeof(data), nullptr);
	msg.size = size;
	msg.data = new uint8_t[size + 1];
	msg.data[size] = 0;
	msg.lifetime = 3;
	memcpy(msg.data, data, size);
	auto index = chat_messages.arr.size();
	chat_messages.arr.push_back(msg);
	
	steam_net_event ev("lobby_chat_message");
	ev.set_uint64_all("lobby_id", e->m_ulSteamIDLobby);
	ev.set_uint64_all("user_id", e->m_ulSteamIDUser);
	ev.set("entry_type", e->m_eChatEntryType);
	ev.set("message_index", (double)index);
	ev.set("message_size", (double)size);
	ev.dispatch();
}
///
enum class steam_lobby_member_change {
	entered = 0x01,
	left = 0x02,
	disconnected = 0x04,
	kicked = 0x08,
	banned = 0x10,
};
void steam_net_callbacks_t::lobby_chat_update(LobbyChatUpdate_t* e) {
	steam_net_event ev("lobby_chat_update");
	ev.set_uint64_all("lobby_id", e->m_ulSteamIDLobby);
	ev.set_uint64_all("user_id", e->m_ulSteamIDUserChanged);
	ev.set_uint64_all("change_id", e->m_ulSteamIDMakingChange);
	ev.set("change_flags", e->m_rgfChatMemberStateChange);
	ev.dispatch();
}