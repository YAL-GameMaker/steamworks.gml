// Steamworks.gml
// author: YellowAfterlife
// license: MIT https://opensource.org/licenses/mit-license.php
//
// This is where pretty much everything happens.
// My sincere apologies if you are using a source code editor that
// does not support collapsing "#pragma region" blocks.

//
///
#define steam_net_version 100

// GCC glue:
#ifdef __GNUC__
#include <stdlib.h>
// I know, and great, but that's what GMS runtime uses
#pragma GCC diagnostic ignored "-Wwrite-strings"
// For what reasons this is not done automatically anyway?
#define offsetof(type, field) __builtin_offsetof(type, field)
// (I guess because it's bad, but tell that to Valve)
#pragma GCC diagnostic ignored "-Winvalid-offsetof"
// This one is not funny.
#define nullptr NULL
#endif

#define VERSION_SAFE_STEAM_API_INTERFACES 1
#include "./../Steamworks/public/steam/steam_api.h"
#include <vector>

/// Different platforms, different syntax.
#if defined(WIN32)
#define dllx extern "C" __declspec(dllexport)
#elif defined(GNUC)
#define dllx extern "C" __attribute__ ((visibility("default"))) 
#else
#define dllx extern "C"
#endif

/// For debugging purposes.
#define trace(...) { printf(__VA_ARGS__); printf("\n"); fflush(stdout); }

// Shortcuts for uint32<->uint64 conversions
#ifndef UINT32_MAX
#define UINT32_MAX 4294967295u
#endif
#define uint64_make(high, low) (((uint64)(high) << 32) | (uint64)(low))
#define uint64_high(value) (uint32)((value) >> 32)
#define uint64_low(value) (uint32)((value) & UINT32_MAX)

/// GameMaker has an unusual way of detecting if a value is "true".
#define gml_bool(value) ((value) >= 0.5)

#pragma region GML callbacks
// As per http://help.yoyogames.com/hc/en-us/articles/216755258:
typedef int gml_ds_map;
void(*gml_event_perform_async)(gml_ds_map map, int event_type) = nullptr;
int(*gml_ds_map_create_ext)(int n, ...) = nullptr;
bool(*gml_ds_map_set_double)(gml_ds_map map, char* key, double value) = nullptr;
bool(*gml_ds_map_set_string)(gml_ds_map map, char* key, char* value) = nullptr;
dllx double RegisterCallbacks(char* arg1, char* arg2, char* arg3, char* arg4) {
	gml_event_perform_async = (void(*)(gml_ds_map, int))arg1;
	gml_ds_map_create_ext = (int(*)(int, ...))arg2;
	gml_ds_map_set_double = (bool(*)(gml_ds_map, char*, double))arg3;
	gml_ds_map_set_string = (bool(*)(gml_ds_map, char*, char*))arg4;
	return 0;
}
gml_ds_map gml_ds_map_create() {
	return gml_ds_map_create_ext(0);
}
#pragma endregion

class steam_net_event {
	private:
	gml_ds_map map;
	public:
	steam_net_event() {
		map = gml_ds_map_create();
	}
	steam_net_event(char* type) {
		map = gml_ds_map_create();
		gml_ds_map_set_string(map, "event_type", type);
	}
	~steam_net_event() {
		//
	}
	/// Dispatches this event and cleans up the map.
	void dispatch() {
		gml_event_perform_async(map, 69);
	}
	bool set(char* key, double value) {
		return gml_ds_map_set_double(map, key, value);
	}
	bool set(char* key, char* value) {
		return gml_ds_map_set_string(map, key, value);
	}
	void set_success(bool success) {
		set("success", success);
		set("result", success ? k_EResultOK : k_EResultFail);
	}
	void set_result(int32 result) {
		set("success", result == k_EResultOK);
		set("result", result);
	}
};

#pragma region Macros & global variables
//
CSteamAPIContext SteamAPI;
#define SteamUser SteamAPI.SteamUser()
#define SteamFriends SteamAPI.SteamFriends()
#define SteamNetworking SteamAPI.SteamNetworking()
#define SteamMatchmaking SteamAPI.SteamMatchmaking()
#define SteamUtils SteamAPI.SteamUtils()

uint32 steam_app_id = 0;
CSteamID steam_local_id;
CSteamID steam_lobby_current;

#pragma endregion

#pragma region Steam Callbacks
class steam_net_callbacks_t {
	public:
	steam_net_callbacks_t() {
		//
	};
	STEAM_CALLBACK(steam_net_callbacks_t, p2p_session_request, P2PSessionRequest_t);
	//STEAM_CALLBACK(steam_net_callbacks_t, OnPersonaStateChange, PersonaStateChange_t);
	STEAM_CALLBACK(steam_net_callbacks_t, lobby_chat_update, LobbyChatUpdate_t);
	STEAM_CALLBACK(steam_net_callbacks_t, lobby_join_requested, GameLobbyJoinRequested_t);
	void lobby_list_received(LobbyMatchList_t* e, bool failed);
	void lobby_created(LobbyCreated_t* e, bool failed);
	void lobby_joined(LobbyEnter_t* e, bool failed);
};
/*void steam_net_callbacks_t::OnPersonaStateChange(PersonaStateChange_t* e) {
trace("Persona state change %d\n", e->m_ulSteamID);
}*/
steam_net_callbacks_t steam_net_callbacks;
#pragma endregion

#pragma region Networking

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
	x.set("user_id_high", uint64_high(uid));
	x.set("user_id_low", uint64_low(uid));
	x.dispatch();
	//
	if (steam_net_auto_accept_p2p_sessions) {
		int n = SteamMatchmaking->GetNumLobbyMembers(steam_lobby_current);
		for (int i = 0; i < n; i++) {
			if (SteamMatchmaking->GetLobbyMemberByIndex(steam_lobby_current, i) == id) {
				SteamNetworking->AcceptP2PSessionWithUser(id);
				break;
			}
		}
	}
}

/// Accepts a P2P session with the given user. Should only be called in the "p2p_session_request" event.
dllx double steam_net_accept_p2p_session_raw(double user_id_high, double user_id_low) {
	CSteamID user(uint64_make(user_id_high, user_id_low));
	return SteamNetworking && SteamNetworking->AcceptP2PSessionWithUser(user);
}

///
dllx double steam_net_close_p2p_session_raw(double user_id_high, double user_id_low) {
	CSteamID user(uint64_make(user_id_high, user_id_low));
	return SteamNetworking && SteamNetworking->CloseP2PSessionWithUser(user);
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
	return SteamNetworking && SteamNetworking->SendP2PPacket(target, data, (int32)size, steam_net_packet_type);
}

#pragma endregion

#pragma region Receiving

uint32 steam_net_packet_size = 0;
void* steam_net_packet_data = nullptr;
CSteamID steam_net_packet_sender;

/// Receives a packet, returns whether successful (retrieve data via steam_net_packet_).
dllx double steam_net_packet_receive() {
	uint32 steam_net_packet_size_pre = 0;
	if (SteamNetworking && SteamNetworking->IsP2PPacketAvailable(&steam_net_packet_size_pre)) {
		// dealloc the current buffer if it's still around:
		if (steam_net_packet_data != nullptr) {
			free(steam_net_packet_data);
			steam_net_packet_data = nullptr;
		}
		//
		steam_net_packet_data = malloc(steam_net_packet_size_pre);
		if (SteamNetworking->ReadP2PPacket(
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

#pragma endregion

#pragma region Matchmaking & Lobbies

#pragma region Current lobby

/// Leaves the current lobby (if any)
dllx double steam_lobby_leave() {
	if (steam_lobby_current.IsValid()) {
		SteamMatchmaking->LeaveLobby(steam_lobby_current);
		steam_lobby_current.Clear();
		return 1;
	} else return 0;
}

/// Returns whether the local user is the owner of the current lobby.
dllx double steam_lobby_is_owner() {
	if (steam_lobby_current.IsValid()) {
		return steam_local_id == SteamMatchmaking->GetLobbyOwner(steam_lobby_current);
	} else return 0;
}

uint64 steam_lobby_get_owner_id() {
	if (steam_lobby_current.IsValid()) {
		return SteamMatchmaking->GetLobbyOwner(steam_lobby_current).ConvertToUint64();
	} else return 0;
}
dllx double steam_lobby_get_owner_id_high() {
	return uint64_high(steam_lobby_get_owner_id());
}
dllx double steam_lobby_get_owner_id_low() {
	return uint64_low(steam_lobby_get_owner_id());
}
/// Returns the number of users in the lobby.
dllx double steam_lobby_get_member_count() {
	if (SteamMatchmaking) {
		return SteamMatchmaking->GetNumLobbyMembers(steam_lobby_current);
	} else return 0;
}
uint64 steam_lobby_get_member_id(int index) {
	if (index >= 0 && index < steam_lobby_get_member_count()) {
		return SteamMatchmaking->GetLobbyMemberByIndex(steam_lobby_current, index).ConvertToUint64();
	} else return 0;
}
dllx double steam_lobby_get_member_id_high(double index) {
	return uint64_high(steam_lobby_get_member_id((int)index));
}
dllx double steam_lobby_get_member_id_low(double index) {
	return uint64_low(steam_lobby_get_member_id((int)index));
}
/// Opens an overlay to invite users to the current lobby.
dllx double steam_lobby_activate_invite_overlay() {
	if (steam_lobby_current.IsValid() && SteamFriends) {
		SteamFriends->ActivateGameOverlayInviteDialog(steam_lobby_current);
		return true;
	} else return false;
}

void steam_net_callbacks_t::lobby_chat_update(LobbyChatUpdate_t* e) {
	//auto map = gml_event_create("lobby_chat_update");
}

#pragma endregion

#pragma region Lobby list request
bool steam_lobby_list_loading = false;
CCallResult<steam_net_callbacks_t, LobbyMatchList_t> steam_lobby_list_received;
std::vector<CSteamID> steam_lobby_list;
int steam_lobby_count = 0;
void steam_net_callbacks_t::lobby_list_received(LobbyMatchList_t* e, bool failed) {
	uint32 n = e->m_nLobbiesMatching;
	steam_lobby_count = n;
	steam_lobby_list.resize(n);
	for (uint32 i = 0; i < n; i++) {
		steam_lobby_list[i] = SteamMatchmaking->GetLobbyByIndex(i);
	}
	steam_lobby_list_loading = false;
	//
	steam_net_event ev("lobby_list");
	ev.set_success(!failed);
	ev.set("lobby_count", n);
	ev.dispatch();
}

/// Requests the list of lobbies to be (re-)loaded.
dllx double steam_lobby_list_request() {
	if (SteamMatchmaking) {
		SteamAPICall_t call = SteamMatchmaking->RequestLobbyList();
		steam_lobby_list_received.Set(call, &steam_net_callbacks, &steam_net_callbacks_t::lobby_list_received);
		steam_lobby_list_loading = true;
		return true;
	} else return false;
}

/// Returns whether the list of lobbies is currently loading.
dllx double steam_lobby_list_is_loading() {
	return steam_lobby_list_loading;
}

#pragma endregion

#pragma region Lobby list filters

/// "==" / Equal
#define steam_lobby_list_filter_eq 0
/// "!=" / Not Equal
#define steam_lobby_list_filter_ne 3
/// "<" / Less Than
#define steam_lobby_list_filter_lt -1
/// ">" / Greater Than
#define steam_lobby_list_filter_gt 1
/// "<=" / Less than or Equal
#define steam_lobby_list_filter_le -2
/// ">=" / Greater than or Equal
#define steam_lobby_list_filter_ge 2

ELobbyComparison steam_lobby_list_filter_convert(int32 filter) {
	switch (filter) {
		case steam_lobby_list_filter_le: return k_ELobbyComparisonEqualToOrLessThan;
		case steam_lobby_list_filter_lt: return k_ELobbyComparisonLessThan;
		case steam_lobby_list_filter_gt: return k_ELobbyComparisonGreaterThan;
		case steam_lobby_list_filter_ge: return k_ELobbyComparisonEqualToOrGreaterThan;
		case steam_lobby_list_filter_ne: return k_ELobbyComparisonNotEqual;
		default: return k_ELobbyComparisonEqual;
	}
}

/// Sets a string filter for the next lobby list request.
dllx double steam_lobby_list_add_string_filter(char* key, char* value, double comparison_type) {
	if (SteamMatchmaking) {
		ELobbyComparison cmp = steam_lobby_list_filter_convert((int32)comparison_type);
		SteamMatchmaking->AddRequestLobbyListStringFilter(key, value, cmp);
		return true;
	} else return false;
}

/// Sets a numerical filter for the next lobby list request.
dllx double steam_lobby_list_add_numerical_filter(char* key, double value, double comparison_type) {
	if (SteamMatchmaking) {
		ELobbyComparison cmp = steam_lobby_list_filter_convert((int32)comparison_type);
		SteamMatchmaking->AddRequestLobbyListNumericalFilter(key, (int)value, cmp);
		return true;
	} else return false;
}

/// Sorts the results of the next lobby list request based to proximity to the given value.
dllx double steam_lobby_list_add_near_filter(char* key, double value) {
	if (SteamMatchmaking) {
		SteamMatchmaking->AddRequestLobbyListNearValueFilter(key, (int)value);
		return true;
	} else return false;
}

///
#define steam_lobby_list_distance_filter_close 0
///
#define steam_lobby_list_distance_filter_default 1
///
#define steam_lobby_list_distance_filter_far 2
///
#define steam_lobby_list_distance_filter_worldwide 3

/// Restricts results by region
dllx double steam_lobby_list_add_distance_filter(double mode) {
	ELobbyDistanceFilter d = k_ELobbyDistanceFilterDefault;
	switch ((int32)mode) {
		case 0: d = k_ELobbyDistanceFilterClose; break;
		case 1: d = k_ELobbyDistanceFilterDefault; break;
		case 2: d = k_ELobbyDistanceFilterFar; break;
		case 3: d = k_ELobbyDistanceFilterWorldwide; break;
	}
	if (SteamMatchmaking) {
		SteamMatchmaking->AddRequestLobbyListDistanceFilter(d);
		return true;
	} else return false;
}

#pragma endregion

#pragma region Lobby list items

/// Returns the number of the matching lobbies.
dllx double steam_lobby_list_get_count() {
	return steam_lobby_count;
}

char* steam_lobby_list_get_data_str = (char*)malloc(1);
/// Retrieves given information about the given lobby
dllx char* steam_lobby_list_get_data(double index, char* key) {
	int32 i = (int32)index;
	if (i >= 0 && i < steam_lobby_count) {
		CSteamID lobby = steam_lobby_list[i];
		const char* data = SteamMatchmaking->GetLobbyData(lobby, key);
		// update steam_lobby_get_data_str to contain the next data string:
		size_t data_size = sizeof(char) * (strlen(data) + 1);
		steam_lobby_list_get_data_str = (char*)realloc(steam_lobby_list_get_data_str, data_size);
		strcpy(steam_lobby_list_get_data_str, data);
		return steam_lobby_list_get_data_str;
	} else return "";
}

uint64 steam_lobby_list_get_lobby_id(double index) {
	int32 i = (int32)index;
	if (i >= 0 && i < steam_lobby_count) {
		return steam_lobby_list[i].ConvertToUint64();
	} else return 0;
}
dllx double steam_lobby_list_get_lobby_id_high(double index) {
	return uint64_high(steam_lobby_list_get_lobby_id(index));
}
dllx double steam_lobby_list_get_lobby_id_low(double index) {
	return uint64_low(steam_lobby_list_get_lobby_id(index));
}


#pragma endregion

#pragma region Joining lobbies

CCallResult<steam_net_callbacks_t, LobbyEnter_t> steam_lobby_joined;
void steam_net_callbacks_t::lobby_joined(LobbyEnter_t* e, bool failed) {
	steam_lobby_current.SetFromUint64(e->m_ulSteamIDLobby);
	steam_net_event q("lobby_joined");
	q.set_success(!failed);
	q.dispatch();
}
/// [async] Starts joining the given lobby.
dllx double steam_lobby_list_join(double index) {
	steam_lobby_leave();
	int32 i = (int32)index;
	if (i >= 0 && i < steam_lobby_count) {
		SteamAPICall_t call = SteamMatchmaking->JoinLobby(steam_lobby_list[i]);
		steam_lobby_joined.Set(call, &steam_net_callbacks, &steam_net_callbacks_t::lobby_joined);
		return true;
	} else return false;
}

bool steam_lobby_join_id(uint64 lobby_id) {
	if (SteamMatchmaking) {
		SteamAPICall_t call = SteamMatchmaking->JoinLobby(lobby_id);
		steam_lobby_joined.Set(call, &steam_net_callbacks, &steam_net_callbacks_t::lobby_joined);
		return true;
	} else return false;
}

dllx double steam_lobby_join_id_raw(double lobby_id_high, double lobby_id_low) {
	return steam_lobby_join_id(uint64_make(lobby_id_high, lobby_id_low));
}

void steam_net_callbacks_t::lobby_join_requested(GameLobbyJoinRequested_t* e) {
	steam_net_event q("lobby_join_requested");
	uint64 lobby_id = e->m_steamIDLobby.ConvertToUint64();
	q.set("lobby_id_high", uint64_high(lobby_id));
	q.set("lobby_id_low", uint64_low(lobby_id));
	uint64 friend_id = e->m_steamIDFriend.ConvertToUint64();
	q.set("friend_id_high", uint64_high(friend_id));
	q.set("friend_id_low", uint64_low(friend_id));
	q.dispatch();
}

#pragma endregion

#pragma region Creating lobbies

/// Private lobby. People can only join if invited.
#define steam_lobby_type_private 0
/// Friends-only lobby. Visible to friends.
#define steam_lobby_type_friends_only 1
/// Public lobby. Visible to everyone.
#define steam_lobby_type_public 2

ELobbyType steam_lobby_type_from_int(int32 type) {
	switch ((int32)type) {
		case steam_lobby_type_friends_only: return k_ELobbyTypeFriendsOnly;
		case steam_lobby_type_public: return k_ELobbyTypePublic;
		default: return k_ELobbyTypePrivate;
	}
}

CCallResult<steam_net_callbacks_t, LobbyCreated_t> steam_lobby_created;
void steam_net_callbacks_t::lobby_created(LobbyCreated_t* e, bool failed) {
	steam_lobby_current.SetFromUint64(e->m_ulSteamIDLobby);
	steam_net_event r("lobby_created");
	r.set_result(e->m_eResult);
	r.dispatch();
}

/// [async] Creates a lobby.
dllx double steam_lobby_create(double type, double max_members) {
	steam_lobby_leave();
	if (SteamMatchmaking) {
		SteamAPICall_t call = SteamMatchmaking->CreateLobby(steam_lobby_type_from_int((int32)type), (int)max_members);
		steam_lobby_created.Set(call, &steam_net_callbacks, &steam_net_callbacks_t::lobby_created);
		return true;
	} else return false;
}

#pragma endregion

#pragma region Managing lobbies

/// [lobby owner only] Sets the data for the current lobby.
dllx double steam_lobby_set_data(char* key, char* value) {
	if (steam_lobby_current.IsValid() && SteamMatchmaking) {
		return SteamMatchmaking->SetLobbyData(steam_lobby_current, key, value);
	} else return false;
}

/// [lobby owner only] Changes the type of the current lobby.
dllx double steam_lobby_set_type(double type) {
	if (steam_lobby_current.IsValid() && SteamMatchmaking) {
		return SteamMatchmaking->SetLobbyType(steam_lobby_current, steam_lobby_type_from_int((int32)type));
	} else return false;
}

#pragma endregion

#pragma endregion

#pragma region User
dllx double steam_get_user_steam_id_high() {
	return uint64_high(steam_local_id.ConvertToUint64());
}

dllx double steam_get_user_steam_id_low() {
	return uint64_low(steam_local_id.ConvertToUint64());
}

/// Can be called on lobby session start, adds the user to "recently played with" list.
dllx double steam_user_set_played_with(double id_high, double id_low) {
	CSteamID target;
	target.SetFromUint64(uint64_make(id_high, id_low));
	if (SteamFriends) {
		SteamFriends->SetPlayedWith(target);
		return true;
	} else return false;
}

/// Activates an overlay by it's raw Steam API name.
dllx double steam_activate_overlay_raw(char* overlay_code) {
	if (SteamFriends) {
		SteamFriends->ActivateGameOverlay(overlay_code);
		return true;
	} else return false;
}
#pragma endregion

#pragma region int64 workarounds (http://bugs.yoyogames.com/view.php?id=21357)
// An extremely non-picky parser. Will combine up to 20 digits from
// an input string into an int64, skipping any other characters.
uint64 int64_from_string(char* cstring) {
	char c;
	int start = -1, end = -1;
	for (int pos = 0; (c = cstring[pos]) != '\0'; pos++) {
		if (c >= '0' && c <= '9') {
			if (start < 0) start = pos;
			end = pos;
		}
	}
	uint64 out = 0;
	if (start < 0) return out;
	uint64 mul = 1;
	int digit = 0;
	for (int pos = end; pos >= start; pos--) {
		c = cstring[pos];
		if (c >= '0' && c <= '9') {
			out += ((uint64)(c - '0')) * mul;
			mul *= 10;
			if (++digit >= 20) return out;
		}
	}
	return out;
}
///
dllx double int64_from_string_high(char* cstring) {
	return uint64_high(int64_from_string(cstring));
}
///
dllx double int64_from_string_low(char* cstring) {
	return uint64_low(int64_from_string(cstring));
}
char int64_combine_buf[21];
///
dllx char* int64_combine_string(double high, double low) {
	strcpy(int64_combine_buf, "");
	sprintf(int64_combine_buf, "%llu", uint64_make(high, low));
	return int64_combine_buf;
}
#pragma endregion

dllx double steam_net_update() {
	SteamAPI_RunCallbacks();
	return 0;
}

/// Detects if the app was run from Steam client and restarts if needed. Returns whether app should quit.
dllx double steam_restart_if_necessary() {
	return SteamAPI_RestartAppIfNecessary(steam_app_id);
}

bool steam_net_ready = false;
dllx double steam_net_api_flags() {
	int r = 0;
	if (steam_net_ready) r |= 1;
	if (SteamUtils) r |= 2;
	if (SteamUser) r |= 4;
	if (SteamFriends) r |= 8;
	if (SteamNetworking) r |= 16;
	if (SteamMatchmaking) r |= 32;
	return r;
}

dllx double steam_net_init_cpp(double app_id) {
	steam_app_id = (uint32)app_id;
	if (!SteamAPI.Init()) {
		trace("Steamworks.gml failed to link with Steam API.");
		return 0;
	}
	steam_net_ready = true;
	steam_local_id = SteamUser->GetSteamID();
	trace("Steamworks.gml initialized successfully.");
	return 1;
}

/// Returns whether the extension has initialized successfully.
dllx double steam_net_is_ready() {
	return steam_net_ready;
}

/// Returns 
dllx double steam_net_get_version() {
	return steam_net_version;
}

dllx double steam_net_is_available() {
	return 1;
}

dllx double steam_net_init_cpp_pre() {
	trace("Steamworks.gml' native extension loaded.");
	steam_lobby_current.Clear();
	return 1;
}
