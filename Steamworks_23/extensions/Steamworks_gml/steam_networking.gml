// NB! these are copied from /Steamworks_23 to other projects

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
var addr = buffer_get_address(buf);
return steam_net_packet_get_data_raw(addr);

#define steam_net_packet_send
/// steam_net_packet_send(steam_id, buffer, size, type) : Sends a packet to the given destination.
var steam_id = argument0;
var addr = buffer_get_address(argument1);
var size = argument2;
steam_net_packet_set_type(argument3);
return steam_net_packet_send_raw(steam_id_get_high(steam_id), steam_id_get_low(steam_id), addr, size);