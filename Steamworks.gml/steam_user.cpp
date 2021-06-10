/// steam_user.cpp
#include "steam_glue.h"
#include <algorithm>
#include <execution>

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
	uint64 friendId;
	uint32 gameId;
	uint64 lobbyId;
	char name[32];
};
dllg vector<steam_get_friends_game_info_t> steam_get_friends_game_info() {
	int flags = k_EFriendFlagImmediate;
	auto count = SteamFriends()->GetFriendCount(flags);
	vector<steam_get_friends_game_info_t> vec {};
	steam_get_friends_game_info_t item {};
	FriendGameInfo_t gameInfo {};
	for (auto i = 0; i < count; i++) {
		auto friendId = SteamFriends()->GetFriendByIndex(i, flags);
		if (!SteamFriends()->GetFriendGamePlayed(friendId, &gameInfo)) continue;
		item.friendId = friendId.ConvertToUint64();
		item.gameId = gameInfo.m_gameID.AppID();
		item.lobbyId = gameInfo.m_steamIDLobby.ConvertToUint64();
		auto name = SteamFriends()->GetFriendPersonaName(friendId);
		strncpy(item.name, name, std::size(item.name));
		vec.push_back(item);
	}
	return vec;
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

#pragma region Avatar

void steam_net_callbacks_t::avatar_image_loaded(AvatarImageLoaded_t* e) {
	steam_net_event r("avatar_image_loaded");
	r.set_success(true);
	auto user_id = e->m_steamID.ConvertToUint64();
	r.set("user_id_high", uint64_high(user_id));
	r.set("user_id_low", uint64_low(user_id));
	r.set_uint64_str("user_id_string", user_id);

	r.set("image", e->m_iImage);
	r.set("width", e->m_iWide);
	r.set("height", e->m_iTall);
	r.dispatch();
}
typedef int steam_image_id;
///
enum class steam_user_avatar_size {
	small = 0,
	medium = 1,
	large = 2,
};
dllg steam_image_id steam_get_user_avatar(uint64_t user_id, int avatar_size) {
	switch ((steam_user_avatar_size)avatar_size) {
		case steam_user_avatar_size::large:
			return SteamFriends()->GetLargeFriendAvatar(CSteamID(user_id));
		case steam_user_avatar_size::medium:
			return SteamFriends()->GetMediumFriendAvatar(CSteamID(user_id));
		default:
			return SteamFriends()->GetSmallFriendAvatar(CSteamID(user_id));
	}
}
dllg std::optional<std::tuple<int, int>> steam_image_get_size(steam_image_id img) {
	uint32 width, height;
	if (SteamUtils()->GetImageSize(img, &width, &height)) {
		return std::make_tuple<int, int>((int)width, (int)height);
	} else return {};
}

dllg bool steam_image_get_rgba(steam_image_id img, gml_buffer dest_buf) {
	return SteamUtils()->GetImageRGBA(img, dest_buf.data(), dest_buf.size());
}

dllg bool steam_image_get_bgra(steam_image_id img, gml_buffer dest_buf) {
	auto data = dest_buf.data();
	auto size = dest_buf.size();
	if (SteamUtils()->GetImageRGBA(img, data, size)) {
		auto cols = (uint32*)data;
		auto count = (size_t)(size >> 2);
		#if _WINDOWS
		std::transform(std::execution::par_unseq, cols, cols + count, cols, [](uint32 col) {
			return (col & 0xFF00FF00u) | ((col & 0xFF) << 16) | ((col & 0xFF0000) >> 16);
			});
		#else
		for (size_t i = 0; i < count; i++) {
			auto col = cols[i];
			cols[i] = (col & 0xFF00FF00u) | ((col & 0xFF) << 16) | ((col & 0xFF0000) >> 16);
		}
		#endif
		return true;
	} else return false;
}
#pragma endregion