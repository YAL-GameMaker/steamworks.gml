/// steam_matchmaking.cpp
#include "steam_glue.h"

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

dllx double steam_lobby_set_owner_id_raw(double user_id_high, double user_id_low) {
	if (steam_lobby_current.IsValid()) {
		return SteamMatchmaking()->SetLobbyOwner(steam_lobby_current, uint64_make(user_id_high, user_id_low));
	} else return false;
}

dllg bool steam_lobby_set_joinable(bool joinable) {
	if (steam_lobby_current.IsValid()) {
		return SteamMatchmaking()->SetLobbyJoinable(steam_lobby_current, joinable);
	} else return false;
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
dllx const char* steam_lobby_list_get_data(double index, char* key) {
	int32 i = (int32)index;
	if (i >= 0 && i < steam_lobby_count) {
		CSteamID lobby = steam_lobby_list[i];
		return SteamMatchmaking()->GetLobbyData(lobby, key);
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
	q.set("lobby_id_high", uint64_high(e->m_ulSteamIDLobby));
	q.set("lobby_id_low", uint64_low(e->m_ulSteamIDLobby));
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
