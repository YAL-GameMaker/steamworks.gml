// NB! these are copied from /Steamworks_23 to other projects

#define steam_gml_init_gml
/// steam_gml_init_gml()
/// steam_gml_initialized = global.g_steam_gml_initialized : Whether the extension is initialized.
/// steam_net_initialized = global.g_steam_gml_initialized
global.g_steam_net_buffer = noone; /// @is {buffer}
global.g_steam_controller_get_max_count = -1;
global.g_steam_controller_get_max_origins = -1;
var _app_id = steam_get_app_id();
show_debug_message("Initializing steamworks.gml with app_id " + string(_app_id) + "...");

//
var _ok = 0;
if (steam_gml_is_available()) {
	_ok = steam_gml_init_cpp(_app_id) > 0;
	if (!_ok) show_debug_message("Failed to initialize steamworks.gml.");
} else show_debug_message("Steamworks.gml binary is not loaded.");
global.g_steam_gml_initialized = _ok;
if (!_ok) return 0;

//
var n = parameter_count();
for (var i = 0; i < n; i += 1) {
	var s = parameter_string(i);
	if (s == "+connect_lobby") {
		s = parameter_string(++i);
		var lobby_id_high = int64_from_string_high(s);
		var lobby_id_low = int64_from_string_low(s);
		steam_lobby_join_id_raw(lobby_id_high, lobby_id_low);
		break;
	}
}

#define steam_gml_check_version
/// steam_gml_check_version() : Returns whether the DLL matches the extension version.
return steam_net_version == steam_gml_get_version();

#define steam_gml_prepare_buffer
/// steam_gml_prepare_buffer(min_size)->buffer~
var b = global.g_steam_net_buffer;
if (b == noone) {
	b = buffer_create(argument0, buffer_grow, 1);
	global.g_steam_net_buffer = b;
} else if (buffer_get_size(b) < argument0) {
	buffer_resize(b, argument0);
}
buffer_seek(b, buffer_seek_start, 0);
return b;

// Legacy scripts:
#define steam_net_is_available
/// steam_net_is_available()->bool
return steam_gml_is_available();

#define steam_net_update
/// steam_net_update()->bool
return steam_gml_update();

#define steam_net_check_version
return steam_gml_check_version();

