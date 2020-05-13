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

// Something 
#define VERSION_SAFE_STEAM_API_INTERFACES 1
#define _CRT_SECURE_NO_WARNINGS
#include "./../Steamworks/public/steam/steam_api.h"
#include "./../Steamworks/public/steam/isteamappticket.h"
#include <vector>
#include <map>
#include <string>

using std::map;
using std::vector;
using std::string;

// Different platforms, different syntax.
#if defined(WIN32)
#define dllx extern "C" __declspec(dllexport)
#elif defined(GNUC)
#define dllx extern "C" __attribute__ ((visibility("default"))) 
#else
#define dllx extern "C"
#endif

// Debug output macro, { printf(...); printf("\n"); fflush(stdout); }
#define trace(...) { printf(__VA_ARGS__); printf("\n"); fflush(stdout); }

// Shortcuts for uint32<->uint64 conversions:
#ifndef UINT32_MAX
#define UINT32_MAX 4294967295u
#endif
#define uint64_make(high, low) (((uint64)(high) << 32) | (uint64)(low))
#define uint64_high(value) (uint32)((value) >> 32)
#define uint64_low(value) (uint32)((value) & UINT32_MAX)

// GameMaker has an unusual way of detecting if a value is "true".
#define gml_bool(value) ((value) > 0.5)
void* __gml_string_b = malloc(1);
size_t __gml_string_n = 1;
// Converts a const char* to a one-time reusable char* for returning to GML.
char* gml_string(const char* s) {
	size_t n = strlen(s) + 1;
	if (__gml_string_n < n) {
		__gml_string_b = realloc(__gml_string_b, n);
	}
	strcpy((char*)__gml_string_b, s);
	return (char*)__gml_string_b;
}

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

// A wrapper for queuing async events for GML easier.
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

// Since GML cannot easily exchange 64-bit integers with native extensions,
// a map+vector pair is used to provide sequentially generated 32-bit integers.
// Also ensures that raw API is not called with unexpected values.
template<class T> class steam_gml_map {
	private:
	map<T, int> t2i;
	vector<T> i2t;
	int next = 0;
	public:
	// Clears the internal data structures.
	void clear() {
		t2i.clear();
		i2t.clear();
		next = 0;
	}
	// Returns whether the value exists in this map.
	bool exists(T key) {
		return t2i.find(key) != t2i.end();
	}
	// Adds a value to the map, returns it's index.
	int add(T item) {
		auto pair = t2i.find(item);
		if (pair != t2i.end()) return pair->second;
		t2i[item] = next;
		i2t.push_back(item);
		return next++;
	}
	// If index is valid, fetches value to &out and returns true.
	bool get(int index, T* out) {
		if (index >= 0 && index < next) {
			*out = i2t[index];
			return true;
		} else return false;
	}
	bool get(double index, T* out) {
		return get((int)index, out);
	}
};

// Same as steam_gml_map, but with tools for caching by name.
template<class T> class steam_gml_namedmap {
	private:
	map<string, int> s2i;
	map<T, int> t2i;
	vector<T> i2t;
	int next;
	public:
	void clear() {
		s2i.clear();
		i2t.clear();
		next = 0;
	}
	// If name exists in map, fetches index to &out and returns true.
	bool find_name(char* name, int* out) {
		auto pair = s2i.find(name);
		if (pair != s2i.end()) {
			*out = pair->second;
			return true;
		} else return false;
	}
	// If value exists in map, fetches index to &out and returns true.
	bool find_value(T value, int* out) {
		auto pair = t2i.find(value);
		if (pair != t2i.end()) {
			*out = pair->second;
			return true;
		} else return false;
	}
	// Sets up name->index and value->index pairs, returns index.
	int set(char* name, T value) {
		i2t.push_back(value);
		s2i[name] = next;
		t2i[value] = next;
		return next++;
	}
	// Sets up a "invalid name" pair (value is GML-specific `noone` constant)
	int set_noone(char* name) {
		s2i[name] = -4;
		return -4;
	}
	// If index exists in map, fetches value to &out and returns true.
	bool get(int index, T* out) {
		if (index >= 0 && index < next) {
			*out = i2t[index];
			return true;
		} else return false;
	}
	bool get(double index, T* out) {
		return get((int)index, out);
	}
};

// Allows to sequentially write data to given memory address (of a GML-side preallocated buffer)
struct buffer {
	char* pos;
	public:
	buffer(char* origin) : pos(origin) {}
	template<class T> T read() {
		T r = *(T*)pos;
		pos += sizeof(T);
		return r;
	}
	template<class T> void write(T val) {
		*(T*)pos = val;
		pos += sizeof(T);
	}
	//
	char* read_string() {
		char* r = pos;
		while (*pos != 0) pos++;
		pos++;
		return r;
	}
	void write_string(const char* s) {
		for (int i = 0; s[i] != 0; i++) write<char>(s[i]);
		write<char>(0);
	}
};

#pragma region Macros & global variables
// The following are solely in case it is ever needed to switch to "unsafe" API
CSteamAPIContext SteamAPI;
#define SteamUser SteamAPI.SteamUser
#define SteamFriends SteamAPI.SteamFriends
#define SteamNetworking SteamAPI.SteamNetworking
#define SteamMatchmaking SteamAPI.SteamMatchmaking
#define SteamUtils SteamAPI.SteamUtils
#define SteamController SteamAPI.SteamController
#define SteamUGC SteamAPI.SteamUGC

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
	STEAM_CALLBACK(steam_net_callbacks_t, micro_txn_auth_response, MicroTxnAuthorizationResponse_t);
	void lobby_list_received(LobbyMatchList_t* e, bool failed);
	void lobby_created(LobbyCreated_t* e, bool failed);
	void lobby_joined(LobbyEnter_t* e, bool failed);
	void item_deleted(DeleteItemResult_t* r, bool failed);
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
		int n = SteamMatchmaking()->GetNumLobbyMembers(steam_lobby_current);
		for (int i = 0; i < n; i++) {
			if (SteamMatchmaking()->GetLobbyMemberByIndex(steam_lobby_current, i) == id) {
				SteamNetworking()->AcceptP2PSessionWithUser(id);
				break;
			}
		}
	}
}

/// Accepts a P2P session with the given user. Should only be called in the "p2p_session_request" event.
dllx double steam_net_accept_p2p_session_raw(double user_id_high, double user_id_low) {
	CSteamID user(uint64_make(user_id_high, user_id_low));
	return SteamNetworking() && SteamNetworking()->AcceptP2PSessionWithUser(user);
}

///
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

#pragma endregion

#pragma region Matchmaking & Lobbies

#pragma region Current lobby

dllx double steam_lobby_get_lobby_id_high() {
	return uint64_high(steam_lobby_current.ConvertToUint64());
}
dllx double steam_lobby_get_lobby_id_low() {
	return uint64_low(steam_lobby_current.ConvertToUint64());
}

/// Leaves the current lobby (if any)
dllx double steam_lobby_leave() {
	if (steam_lobby_current.IsValid()) {
		SteamMatchmaking()->LeaveLobby(steam_lobby_current);
		steam_lobby_current.Clear();
		return 1;
	} else return 0;
}

/// Returns whether the local user is the owner of the current lobby.
dllx double steam_lobby_is_owner() {
	if (steam_lobby_current.IsValid()) {
		return steam_local_id == SteamMatchmaking()->GetLobbyOwner(steam_lobby_current);
	} else return 0;
}

uint64 steam_lobby_get_owner_id() {
	if (steam_lobby_current.IsValid()) {
		return SteamMatchmaking()->GetLobbyOwner(steam_lobby_current).ConvertToUint64();
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
	if (SteamMatchmaking()) {
		return SteamMatchmaking()->GetNumLobbyMembers(steam_lobby_current);
	} else return 0;
}
uint64 steam_lobby_get_member_id(int index) {
	if (index >= 0 && index < steam_lobby_get_member_count()) {
		return SteamMatchmaking()->GetLobbyMemberByIndex(steam_lobby_current, index).ConvertToUint64();
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
	if (steam_lobby_current.IsValid() && SteamFriends()) {
		SteamFriends()->ActivateGameOverlayInviteDialog(steam_lobby_current);
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
		steam_lobby_list[i] = SteamMatchmaking()->GetLobbyByIndex(i);
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
	if (SteamMatchmaking()) {
		SteamAPICall_t call = SteamMatchmaking()->RequestLobbyList();
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
	if (SteamMatchmaking()) {
		ELobbyComparison cmp = steam_lobby_list_filter_convert((int32)comparison_type);
		SteamMatchmaking()->AddRequestLobbyListStringFilter(key, value, cmp);
		return true;
	} else return false;
}

/// Sets a numerical filter for the next lobby list request.
dllx double steam_lobby_list_add_numerical_filter(char* key, double value, double comparison_type) {
	if (SteamMatchmaking()) {
		ELobbyComparison cmp = steam_lobby_list_filter_convert((int32)comparison_type);
		SteamMatchmaking()->AddRequestLobbyListNumericalFilter(key, (int)value, cmp);
		return true;
	} else return false;
}

/// Sorts the results of the next lobby list request based to proximity to the given value.
dllx double steam_lobby_list_add_near_filter(char* key, double value) {
	if (SteamMatchmaking()) {
		SteamMatchmaking()->AddRequestLobbyListNearValueFilter(key, (int)value);
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
	if (SteamMatchmaking()) {
		SteamMatchmaking()->AddRequestLobbyListDistanceFilter(d);
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
		const char* data = SteamMatchmaking()->GetLobbyData(lobby, key);
		// update steam_lobby_get_data_str to contain the next data string:
		size_t data_size = sizeof(char) * (strlen(data) + 1);
		steam_lobby_list_get_data_str = (char*)realloc(steam_lobby_list_get_data_str, data_size);
		strcpy(steam_lobby_list_get_data_str, data);
		return steam_lobby_list_get_data_str;
	} else return "";
}
//
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
//
uint64 steam_lobby_list_get_lobby_owner_id(double index) {
	int32 i = (int32)index;
	if (i >= 0 && i < steam_lobby_count) {
		return SteamMatchmaking()->GetLobbyOwner(steam_lobby_list[i]).ConvertToUint64();
	} else return 0;
}
dllx double steam_lobby_list_get_lobby_owner_id_high(double index) {
	return uint64_high(steam_lobby_list_get_lobby_owner_id(index));
}
dllx double steam_lobby_list_get_lobby_owner_id_low(double index) {
	return uint64_low(steam_lobby_list_get_lobby_owner_id(index));
}
/// Returns the number of members in the given lobby in search results.
dllx double steam_lobby_list_get_lobby_member_count(double lobby_index) {
	int32 i = (int32)lobby_index;
	if (i >= 0 && i < steam_lobby_count) {
		return SteamMatchmaking()->GetNumLobbyMembers(steam_lobby_list[i]);
	} else return 0;
}
uint64 steam_lobby_list_get_lobby_member_id(double lobby_index, double member_index) {
	int32 i = (int32)lobby_index;
	if (i >= 0 && i < steam_lobby_count) {
		return SteamMatchmaking()->GetLobbyMemberByIndex(steam_lobby_list[i], (int)member_index).ConvertToUint64();
	} else return 0;
}
dllx double steam_lobby_list_get_lobby_member_id_high(double lobby_index, double member_index) {
	return uint64_high(steam_lobby_list_get_lobby_member_id(lobby_index, member_index));
}
dllx double steam_lobby_list_get_lobby_member_id_low(double lobby_index, double member_index) {
	return uint64_low(steam_lobby_list_get_lobby_member_id(lobby_index, member_index));
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
		SteamAPICall_t call = SteamMatchmaking()->JoinLobby(steam_lobby_list[i]);
		steam_lobby_joined.Set(call, &steam_net_callbacks, &steam_net_callbacks_t::lobby_joined);
		return true;
	} else return false;
}

bool steam_lobby_join_id(uint64 lobby_id) {
	if (SteamMatchmaking()) {
		SteamAPICall_t call = SteamMatchmaking()->JoinLobby(lobby_id);
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
	uint64 lobby_id = e->m_ulSteamIDLobby;
	steam_lobby_current.SetFromUint64(lobby_id);
	steam_net_event r("lobby_created");
	r.set("lobby_id_high", uint64_high(lobby_id));
	r.set("lobby_id_low", uint64_low(lobby_id));
	r.set_result(e->m_eResult);
	r.dispatch();
}

/// [async] Creates a lobby.
dllx double steam_lobby_create(double type, double max_members) {
	steam_lobby_leave();
	if (SteamMatchmaking()) {
		SteamAPICall_t call = SteamMatchmaking()->CreateLobby(steam_lobby_type_from_int((int32)type), (int)max_members);
		steam_lobby_created.Set(call, &steam_net_callbacks, &steam_net_callbacks_t::lobby_created);
		return true;
	} else return false;
}

#pragma endregion

#pragma region Managing lobbies

/// [lobby owner only] Sets the data for the current lobby.
dllx double steam_lobby_set_data(char* key, char* value) {
	if (steam_lobby_current.IsValid() && SteamMatchmaking()) {
		return SteamMatchmaking()->SetLobbyData(steam_lobby_current, key, value);
	} else return false;
}

/// [anyone] Retrieves previously set data for the current lobby.
dllx char* steam_lobby_get_data(char* key) {
	if (steam_lobby_current.IsValid() && SteamMatchmaking()) {
		return gml_string(SteamMatchmaking()->GetLobbyData(steam_lobby_current, key));
	} return "";
}

/// [lobby owner only] Changes the type of the current lobby.
dllx double steam_lobby_set_type(double type) {
	if (steam_lobby_current.IsValid() && SteamMatchmaking()) {
		return SteamMatchmaking()->SetLobbyType(steam_lobby_current, steam_lobby_type_from_int((int32)type));
	} else return false;
}

#pragma endregion

#pragma endregion

#pragma region Steam Controller

#pragma region Controller meta
steam_gml_map<ControllerHandle_t> steam_controller_controllers;
steam_gml_namedmap<ControllerActionSetHandle_t> steam_controller_actionsets;
steam_gml_namedmap<ControllerAnalogActionHandle_t> steam_controller_analog;
steam_gml_namedmap<ControllerDigitalActionHandle_t> steam_controller_digital;
ControllerHandle_t steam_controller_handles[STEAM_CONTROLLER_MAX_COUNT];
EControllerActionOrigin steam_controller_origins[STEAM_CONTROLLER_MAX_ORIGINS];
//
dllx double steam_controller_reset() {
	steam_controller_controllers.clear();
	steam_controller_actionsets.clear();
	steam_controller_analog.clear();
	steam_controller_digital.clear();
	return 1;
}
/// Should be called on game start if you use Steam Controller
dllx double steam_controller_init() {
	return SteamController() && SteamController()->Init();
}
/// Can be called prior to other controller functions for lower latency. Called by steam_gml_update.
dllx double steam_controller_update() {
	if (SteamController()) {
		SteamController()->RunFrame();
		return 1;
	} else return 0;
}
dllx double steam_controller_get_max_count_raw() {
	return STEAM_CONTROLLER_MAX_COUNT;
}
dllx double steam_controller_get_ids_raw(char* cbuf) {
	if (!SteamController()) return 0;
	SteamController()->RunFrame();
	int found = SteamController()->GetConnectedControllers(steam_controller_handles);
	if (found <= 0) return found;
	buffer buf(cbuf);
	for (int i = 0; i < found; i++) {
		buf.write<int32>(steam_controller_controllers.add(steam_controller_handles[i]));
	}
	return found;
}
ControllerHandle_t steam_controller_find(double id) {
	if (id == -3/* all */) return STEAM_CONTROLLER_HANDLE_ALL_CONTROLLERS;
	ControllerHandle_t q; return steam_controller_controllers.get(id, &q) ? q : 0;
}
#pragma endregion

#pragma region ActionSet
/// Assigns and returns ActionSet ID for given name, -1 if actionset is not found
dllx double steam_controller_get_actionset_id(char* actionSetName) {
	if (!SteamController()) return -1;
	int i; if (steam_controller_actionsets.find_name(actionSetName, &i)) return i;
	ControllerActionSetHandle_t r = SteamController()->GetActionSetHandle(actionSetName);
	if (r != 0) {
		return steam_controller_actionsets.set(actionSetName, r);
	} else return steam_controller_actionsets.set_noone(actionSetName);
}
/// Returns action set ID (generated by steam_controller_get_actionset_id), as per GetCurrentActionSet
dllx double steam_controller_get_actionset(double controller) {
	if (!SteamController()) return -1;
	ControllerHandle_t q; if (!steam_controller_controllers.get(controller, &q)) return -1;
	ControllerActionSetHandle_t r = SteamController()->GetCurrentActionSet(q);
	int i; return steam_controller_actionsets.find_value(r, &i) ? i : -1;
}
/// Changes controller action set, as per ActivateActionSet
dllx double steam_controller_set_actionset(double controller, double actionset_id) {
	if (!SteamController()) return false;
	ControllerHandle_t q; if (!steam_controller_controllers.get(controller, &q)) return false;
	ControllerActionSetHandle_t v; if (!steam_controller_actionsets.get(actionset_id, &v)) return false;
	SteamController()->ActivateActionSet(q, v);
	return true;
}
#pragma endregion

#pragma region DigitalAction
///
dllx double steam_controller_get_digital_id(char* digitalActionName) {
	if (!SteamController()) return -1;
	int i; if (steam_controller_actionsets.find_name(digitalActionName, &i)) return i;
	ControllerDigitalActionHandle_t r = SteamController()->GetDigitalActionHandle(digitalActionName);
	if (r != 0) {
		return steam_controller_digital.set(digitalActionName, r);
	} else return steam_controller_digital.set_noone(digitalActionName);
}
/// Retreives digital action state (true/false)
dllx double steam_controller_get_digital_value(double controller, double digital_id) {
	if (!SteamController()) return 0;
	ControllerHandle_t q = steam_controller_find(controller); if (q == 0) return 0;
	ControllerDigitalActionHandle_t t; if (!steam_controller_digital.get(digital_id, &t)) return 0;
	ControllerDigitalActionData_t d = SteamController()->GetDigitalActionData(q, t);
	return d.bState;
}
/// Returns whether the given digital action is currently active (true/false)
dllx double steam_controller_get_digital_status(double controller, double digital_id) {
	if (!SteamController()) return 0;
	ControllerHandle_t ctl = steam_controller_find(controller); if (ctl == 0) return 0;
	ControllerDigitalActionHandle_t act; if (!steam_controller_digital.get(digital_id, &act)) return 0;
	ControllerDigitalActionData_t d = SteamController()->GetDigitalActionData(ctl, act);
	return d.bActive;
}
dllx double steam_controller_get_digital_origins_raw(
	double controller, double actionset_id, double digital_id, char* out
) {
	if (!SteamController()) return 0;
	ControllerHandle_t ctl = steam_controller_find(controller); if (ctl == 0) return 0;
	ControllerActionSetHandle_t set;
	if (!steam_controller_actionsets.get(actionset_id, &set)) return 0;
	ControllerDigitalActionHandle_t act = 4;
	if (!steam_controller_digital.get(digital_id, &act)) return 0;
	int found = SteamController()->GetDigitalActionOrigins(ctl, set, act, steam_controller_origins);
	buffer buf(out);
	for (int i = 0; i < found; i++) {
		buf.write<int32>(steam_controller_origins[i]);
	}
	return found;
}
#pragma endregion

#pragma region Analog action
///
dllx double steam_controller_get_analog_id(char* analogActionName) {
	if (!SteamController()) return -1;
	int i; if (steam_controller_actionsets.find_name(analogActionName, &i)) return i;
	ControllerDigitalActionHandle_t r = SteamController()->GetAnalogActionHandle(analogActionName);
	if (r != 0) {
		return steam_controller_analog.set(analogActionName, r);
	} else return steam_controller_analog.set_noone(analogActionName);
}
dllx double steam_controller_get_analog_data(double controller, double analog_id, double data_id) {
	if (!SteamController()) return 0;
	ControllerHandle_t q = steam_controller_find(controller); if (q == 0) return -1;
	ControllerAnalogActionHandle_t t; if (!steam_controller_analog.get(analog_id, &t)) return -2;
	ControllerAnalogActionData_t d = SteamController()->GetAnalogActionData(q, t);
	switch ((int)data_id) {
		case 1: return (int)d.eMode;
		case 2: return d.x;
		case 3: return d.y;
		default: return d.bActive;
	}
}
dllx double steam_controller_get_analog_origins_raw(
	double controller, double actionset_id, double digital_id, char* out
) {
	if (!SteamController()) return 0;
	ControllerHandle_t ctl = steam_controller_find(controller); if (ctl == 0) return 0;
	ControllerActionSetHandle_t set;
	if (!steam_controller_actionsets.get(actionset_id, &set)) return 0;
	ControllerDigitalActionHandle_t act = 4;
	if (!steam_controller_analog.get(digital_id, &act)) return 0;
	int found = SteamController()->GetAnalogActionOrigins(ctl, set, act, steam_controller_origins);
	buffer buf(out);
	for (int i = 0; i < found; i++) {
		buf.write<int32>(steam_controller_origins[i]);
	}
	return found;
}
#pragma endregion

#pragma region Origin
dllx double steam_controller_get_max_origins_raw() {
	return STEAM_CONTROLLER_MAX_ORIGINS;
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
	if (SteamFriends()) {
		SteamFriends()->SetPlayedWith(target);
		return true;
	} else return false;
}

/// Activates an overlay by it's raw Steam API name.
dllx double steam_activate_overlay_raw(char* overlay_code) {
	if (SteamFriends()) {
		SteamFriends()->ActivateGameOverlay(overlay_code);
		return true;
	} else return false;
}

void steam_net_callbacks_t::micro_txn_auth_response(MicroTxnAuthorizationResponse_t* e) {
	steam_net_event r("micro_txn_auth_response");
	r.set_result(e->m_bAuthorized);
	r.set("order_id_high", uint64_high(e->m_ulOrderID));
	r.set("order_id_low", uint64_low(e->m_ulOrderID));
	r.set("app_id", e->m_unAppID);
	r.dispatch();
}

struct steam_get_friends_game_info_t {
	CSteamID friendId{};
	FriendGameInfo_t gameInfo{};
};
static std::vector<steam_get_friends_game_info_t> steam_get_friends_game_info_vec{};
dllx double steam_get_friends_game_info_1() {
	int flags = k_EFriendFlagImmediate;
	auto count = SteamFriends()->GetFriendCount(flags);
	steam_get_friends_game_info_vec.clear();
	steam_get_friends_game_info_t tmp{};
	for (auto i = 0; i < count; i++) {
		tmp.friendId = SteamFriends()->GetFriendByIndex(i, flags);
		if (!SteamFriends()->GetFriendGamePlayed(tmp.friendId, &tmp.gameInfo)) continue;
		steam_get_friends_game_info_vec.push_back(tmp);
	}
	return steam_get_friends_game_info_vec.size();
}
struct steam_get_friends_game_info_r {
	int64 friendId;
	int64 gameId;
	int64 lobbyId;
};
dllx double steam_get_friends_game_info_2(steam_get_friends_game_info_r* out) {
	for (auto i = 0u; i < steam_get_friends_game_info_vec.size(); i++) {
		auto& q = steam_get_friends_game_info_vec[i];
		auto& r = out[i];
		r.friendId = q.friendId.ConvertToUint64();
		r.gameId = q.gameInfo.m_gameID.AppID();
		r.lobbyId = q.gameInfo.m_steamIDLobby.ConvertToUint64();
	}
	return 1;
}

#pragma endregion

#pragma region Functions that should be native in GMS2.

CCallResult<steam_net_callbacks_t, DeleteItemResult_t> steam_item_deleted;

/// Deletes an item from Steam Workshop.
dllx double steam_ugc_delete_item(double published_file_id) {
	if (SteamUGC()) {
		SteamAPICall_t call = SteamUGC()->DeleteItem(published_file_id);
		steam_item_deleted.Set(call, &steam_net_callbacks, &steam_net_callbacks_t::item_deleted);
	}
	return 0;
}

void steam_net_callbacks_t::item_deleted(DeleteItemResult_t* r, bool failed) {
	steam_net_event x("ugc_delete_item");
	x.set_result(r->m_eResult);
	x.set("published_file_id_high", uint64_high(r->m_nPublishedFileId));
	x.set("published_file_id_low", uint64_low(r->m_nPublishedFileId));
	x.dispatch();
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

dllx double steam_get_app_ownership_ticket_data_raw(char* outbuf, uint32* vals) {
	static ISteamAppTicket* SteamAppTicket = nullptr;
	static bool ready = false;
	if (!ready) {
		ready = true;
		SteamAppTicket = (ISteamAppTicket*)SteamClient()->GetISteamGenericInterface(
			SteamAPI_GetHSteamUser(), SteamAPI_GetHSteamPipe(), STEAMAPPTICKET_INTERFACE_VERSION);
	}
	uint32 ret = 0;
	uint32 iAppID = 0;
	uint32 iSteamID = 0;
	uint32 iSignature = 0;
	uint32 cbSignature = 0;
	if (SteamAppTicket) ret = SteamAppTicket->GetAppOwnershipTicketData(
		vals[0], outbuf, vals[1], &iAppID, &iSteamID, &iSignature, &cbSignature);
	vals[0] = ret;
	vals[1] = iAppID;
	vals[2] = iSteamID;
	vals[3] = iSignature;
	vals[4] = cbSignature;
	return ret;
}

dllx double steam_gml_update() {
	SteamAPI_RunCallbacks();
	return 0;
}

/// Detects if the app was run from Steam client and restarts if needed. Returns whether app should quit.
dllx double steam_restart_if_necessary() {
	return SteamAPI_RestartAppIfNecessary(steam_app_id);
}

bool steam_gml_ready = false;
dllx double steam_gml_api_flags() {
	int r = 0;
	if (steam_gml_ready) r |= 1;
	if (SteamUtils()) r |= 2;
	if (SteamUser()) r |= 4;
	if (SteamFriends()) r |= 8;
	if (SteamNetworking()) r |= 16;
	if (SteamMatchmaking()) r |= 32;
	if (SteamController()) r |= 64;
	if (SteamUGC()) r |= 128;
	return r;
}

dllx double steam_gml_init_cpp(double app_id) {
	steam_app_id = (uint32)app_id;
	if (!SteamAPI.Init()) {
		trace("Steamworks.gml failed to link with Steam API.");
		return 0;
	}
	steam_gml_ready = true;
	steam_local_id = SteamUser()->GetSteamID();
	trace("Steamworks.gml initialized successfully.");
	return 1;
}

/// Returns whether the extension has initialized successfully.
dllx double steam_gml_is_ready() {
	return steam_gml_ready;
}

dllx double steam_gml_get_version() {
	return steam_net_version;
}

/// Returns whether the extension was loaded at all (GML returns 0 for unloaded extension calls).
dllx double steam_gml_is_available() {
	return 1;
}

dllx double steam_gml_init_cpp_pre() {
	trace("Steamworks.gml loaded native extension.");
	steam_controller_reset();
	steam_lobby_current.Clear();
	return 1;
}
