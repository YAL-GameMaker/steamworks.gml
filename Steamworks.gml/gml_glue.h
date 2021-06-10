/// gml_glue.h
#pragma once
#include "steam_glue.h"
#include "gml_ext.h"

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
inline bool gml_bool(double val) {
	return val > 0.5;
}

char* gml_string(const char* s);

// As per http://help.yoyogames.com/hc/en-us/articles/216755258:
typedef int gml_ds_map;
//
typedef void (*gml_event_perform_async_t)(gml_ds_map map, int event_type);
typedef int (*gml_ds_map_create_ext_t)(int n, ...);
typedef bool (*gml_ds_map_set_double_t)(gml_ds_map map, char* key, double value);
typedef bool (*gml_ds_map_set_string_t)(gml_ds_map map, char* key, char* value);
//
extern gml_event_perform_async_t gml_event_perform_async;
extern gml_ds_map_create_ext_t gml_ds_map_create_ext;
extern gml_ds_map_set_double_t gml_ds_map_set_double;
extern gml_ds_map_set_string_t gml_ds_map_set_string;
//
inline gml_ds_map gml_ds_map_create() {
	return gml_ds_map_create_ext(0);
}

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
	bool set_uint64_str(char* key, int64 value) {
		static string user_id_str{};
		user_id_str = std::to_string(value);
		return set(key, user_id_str.data());
	}
	void set_success(bool success) {
		set("success", success);
		set("result", success ? k_EResultOK : k_EResultFail);
	}
	void set_result(int result) {
		set("success", result == k_EResultOK);
		set("result", result);
	}
};
