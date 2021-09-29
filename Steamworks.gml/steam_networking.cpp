/// steam_networking.cpp
#include "steam_glue.h"

#pragma region Sessions

bool steam_net_auto_accept_p2p_sessions = true;
/// Sets whether to auto-accept all incoming P2P session requests.
dllx double steam_net_set_auto_accept_p2p_sessions(double auto_accept) {
	steam_net_auto_accept_p2p_sessions = gml_bool(auto_accept);
	return 1;
}

void steam_net_callbacks_t::p2p_session_request(P2PSessionRequest_t* e) {
	CSteamID id = e->m_steamIDRemote;
	uint64 uid = id.ConvertToUint64();
	//
	steam_net_event x("p2p_session_request");
	x.set_steamid_all("user_id", id);
	x.dispatch();
	//
	if (steam_net_auto_accept_p2p_sessions) {
		int n = SteamMatchmaking()->GetNumLobbyMembers(steam_lobby_current);
		for (int i = 0; i < n; i++) {
			if (SteamMatchmaking()->GetLobbyMemberByIndex(steam_lobby_current, i) == id) {
				SteamNetworking()->AcceptP2PSessionWithUser(id);
				break;
			}
		}
	}
}

dllx double steam_net_accept_p2p_session_raw(double user_id_high, double user_id_low) {
	CSteamID user(uint64_make(user_id_high, user_id_low));
	return SteamNetworking() && SteamNetworking()->AcceptP2PSessionWithUser(user);
}

dllx double steam_net_close_p2p_session_raw(double user_id_high, double user_id_low) {
	CSteamID user(uint64_make(user_id_high, user_id_low));
	return SteamNetworking() && SteamNetworking()->CloseP2PSessionWithUser(user);
}

#pragma endregion

#pragma region Sending

/// Basic UDP send (<1200 bytes; may get lost)
#define steam_net_packet_type_unreliable 0
/// Instant non-buffering UDP send (e.g. for voice data)
#define steam_net_packet_type_unreliable_nodelay 1
/// Reliable send (up to 1MB)
#define steam_net_packet_type_reliable 2
/// Buffering send (Nagle algorithm)
#define steam_net_packet_type_reliable_buffer 3
EP2PSend steam_net_packet_type = k_EP2PSendReliable;
dllx double steam_net_packet_set_type(double type) {
	EP2PSend t = k_EP2PSendUnreliable;
	switch ((int32)type) {
		case steam_net_packet_type_unreliable_nodelay: t = k_EP2PSendUnreliableNoDelay; break;
		case steam_net_packet_type_reliable: t = k_EP2PSendReliable; break;
		case steam_net_packet_type_reliable_buffer: t = k_EP2PSendReliableWithBuffering; break;
	}
	steam_net_packet_type = t;
	return 1;
}
//
dllx double steam_net_packet_send_raw(double id_high, double id_low, char* data, double size) {
	CSteamID target(uint64_make(id_high, id_low));
	return SteamNetworking() && SteamNetworking()->SendP2PPacket(target, data, (int32)size, steam_net_packet_type);
}

#pragma endregion

#pragma region Receiving

uint32 steam_net_packet_size = 0;
void* steam_net_packet_data = nullptr;
CSteamID steam_net_packet_sender;

/// Receives a packet, returns whether successful (retrieve data via steam_net_packet_).
dllx double steam_net_packet_receive() {
	uint32 steam_net_packet_size_pre = 0;
	if (SteamNetworking() && SteamNetworking()->IsP2PPacketAvailable(&steam_net_packet_size_pre)) {
		// dealloc the current buffer if it's still around:
		if (steam_net_packet_data != nullptr) {
			free(steam_net_packet_data);
			steam_net_packet_data = nullptr;
		}
		//
		steam_net_packet_data = malloc(steam_net_packet_size_pre);
		if (SteamNetworking()->ReadP2PPacket(
			steam_net_packet_data, steam_net_packet_size_pre,
			&steam_net_packet_size, &steam_net_packet_sender)) {
			return 1;
		}
	}
	return 0;
}

/// Returns the size of the last received packet (in bytes).
dllx double steam_net_packet_get_size() {
	return steam_net_packet_size;
}

dllx double steam_net_packet_get_data_raw(char* data) {
	if (steam_net_packet_data != nullptr) {
		memcpy(data, steam_net_packet_data, steam_net_packet_size);
		return 1;
	} else return 0;
}

uint64 steam_net_packet_get_sender_id() {
	return steam_net_packet_sender.ConvertToUint64();
}
dllx double steam_net_packet_get_sender_id_high() {
	return uint64_high(steam_net_packet_get_sender_id());
}
dllx double steam_net_packet_get_sender_id_low() {
	return uint64_low(steam_net_packet_get_sender_id());
}

#pragma endregion
