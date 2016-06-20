#define steam_id_create
/// steam_id_create(high, low) : Creates an immutable Steam ID.
// (as of 1.4.1457 there are still issues with int64 operations on YYC)
var r;
r[1] = argument1;
r[0] = argument0;
return r;

#define steam_id_get_high
/// steam_id_get_high(steam_id) : Returns higher 32 bits of a Steam ID
return argument0[0];

#define steam_id_get_low
/// steam_id_get_low(steam_id) : Returns lower 32 bits of a Steam ID
return argument0[1];

#define steam_id_equals
/// steam_id_equals(id1, id2) : Returns whether two IDs match up.
return argument0[0] == argument1[0] && argument0[1] == argument1[1];

#define steam_id_from_int64
/// steam_id_from_int64(value) : Creates a Steam ID from an int64
var s = string(argument0);
return steam_id_create(int64_from_string_high(s), int64_from_string_low(s));

#define steam_id_to_int64
/// steam_id_to_int64(steam_id) : Converts a Steam ID to int64
var q = argument0;
return int64(int64_combine_string(steam_id_get_high(q), steam_id_get_low(q)));

#define steam_net_accept_p2p_session
/// steam_net_accept_p2p_session(user_id) : Accepts a P2P session with the given user. Should only be called in the "p2p_session_request" event.
var user_id = argument0;
return steam_net_accept_p2p_session_raw(steam_id_get_high(user_id), steam_id_get_low(user_id));

#define steam_net_close_p2p_session
/// steam_net_close_p2p_session(user_id) : Closes the P2P session with the given user (if any)
var user_id = argument0;
return steam_net_close_p2p_session_raw(steam_id_get_high(user_id), steam_id_get_low(user_id));

#define steam_net_packet_get_sender_id
/// steam_net_packet_get_sender_id() : Returns the sender ID (int64) of the last received packet.
return steam_id_create(steam_net_packet_get_sender_id_high(), steam_net_packet_get_sender_id_low());

#define steam_net_packet_get_data
/// steam_net_packet_get_data(buffer) : Copies the current packet data to the given buffer.
var buf = argument0;
var size = steam_net_packet_get_size();
if (buffer_get_size(buf) < size) buffer_resize(buf, size);
var addr = real(buffer_get_address(buf));
return steam_net_packet_get_data_raw(addr);

#define steam_net_packet_send
/// steam_net_packet_send(steam_id, buffer, size, type) : Sends a packet to the given destination.
var steam_id = argument0;
var addr = real(buffer_get_address(argument1));
var size = argument2;
var type = argument3;
return steam_net_packet_send_raw(uint64_high(steam_id), uint64_low(steam_id), addr, size, type);

#define steam_lobby_join_id
/// steam_lobby_join_id(steam_id) : Joins the given lobby
var lobby_id = argument0;
return steam_lobby_join_id_raw(steam_id_get_high(lobby_id), steam_id_get_low(lobby_id));

#define steam_lobby_get_owner_id
/// steam_lobby_get_owner_id() : Returns the user ID of the authoritative user in the lobby.
return steam_id_create(steam_lobby_get_owner_id_high(), steam_lobby_get_owner_id_low());

#define steam_lobby_list_get_lobby_id
/// steam_lobby_list_get_lobby_id(index) : Returns the ID of the given lobby.
var i = argument0;
return steam_id_create(steam_lobby_list_get_lobby_id_high(i), steam_lobby_list_get_lobby_id_low(i));

#define steam_net_init_gml
/// steam_net_init_gml()
/// steam_net_initialized = global.g_steam_net_initialized : Whether the extension is initialized.
var app_id = steam_get_app_id();
show_debug_message("Initializing steamworks.gml with app_id " + string(app_id) + "...");
//
var r = 0;
if (steam_net_is_available()) {
	r = steam_net_init_cpp(app_id) > 0;
	if (!r) show_debug_message("Failed to initialize steamworks.gml.");
} else show_debug_message("Steamworks.gml binary is not loaded.");
global.g_steam_net_initialized = r;
if (!r) return 0;
// parse 
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
