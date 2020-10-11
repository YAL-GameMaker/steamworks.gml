/// steam_glue.h
#pragma once

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

// For unidentifiable reason Steam API doesn't init unless using "safe" interfaces.
// Might be a conflict with GM runtime.
#define VERSION_SAFE_STEAM_API_INTERFACES 1
#define _CRT_SECURE_NO_WARNINGS
#include "steam_api.h"
#include "isteamappticket.h"

// The following are solely in case it is ever needed to switch to "unsafe" API
extern CSteamAPIContext SteamAPI;
#define SteamUser SteamAPI.SteamUser
#define SteamFriends SteamAPI.SteamFriends
#define SteamNetworking SteamAPI.SteamNetworking
#define SteamMatchmaking SteamAPI.SteamMatchmaking
#define SteamUtils SteamAPI.SteamUtils
#define SteamController SteamAPI.SteamController
#define SteamUGC SteamAPI.SteamUGC

extern uint32 steam_app_id;
extern CSteamID steam_local_id;
extern CSteamID steam_lobby_current;

#include <vector>
#include <map>
#include <string>
#include "steam_callbacks.h"
std::string b64encode(const void* data, const size_t& len);

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

#include "gml_glue.h"
#include "gml_glue_map.h"