/// steam_user.cpp
#include "steam_glue.h"

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
	return (double)steam_get_friends_game_info_vec.size();
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

#pragma region Rich Text Presence

/// Sets rich text presence for the active user. See: https://partner.steamgames.com/doc/api/ISteamFriends#SetRichPresence
dllx double steam_set_rich_presence(const char* pchKey, const char* pchValue) {
	if (SteamFriends()) {
		return SteamFriends()->SetRichPresence(pchKey, pchValue);
	} else return false;
}

/// Clears rich text presence.
dllx double steam_clear_rich_presence() {
	if (SteamFriends()) {
		SteamFriends()->ClearRichPresence();
		return true;
	} else return false;
}

#pragma endregion
