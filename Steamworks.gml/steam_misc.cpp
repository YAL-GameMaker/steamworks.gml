/// steam_misc.cpp
#include "steam_glue.h"

#include "steam_glue.h"

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

dllx double int64_from_string_high(char* cstring) {
	return uint64_high(int64_from_string(cstring));
}

dllx double int64_from_string_low(char* cstring) {
	return uint64_low(int64_from_string(cstring));
}

dllx char* int64_combine_string(double high, double low) {
	static char int64_combine_buf[21];
	strcpy(int64_combine_buf, "");
	sprintf(int64_combine_buf, "%llu", uint64_make(high, low));
	return int64_combine_buf;
}
#pragma endregion

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

void steam_controller_reset_impl();
dllx double steam_gml_init_cpp_pre() {
	trace("Steamworks.gml loaded native extension.");
	steam_controller_reset_impl();
	steam_lobby_current.Clear();
	return 1;
}