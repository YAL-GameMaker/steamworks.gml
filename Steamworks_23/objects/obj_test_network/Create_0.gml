//test_params();
inbuf = buffer_create(16, buffer_grow, 1);
outbuf = buffer_create(16, buffer_grow, 1);
chat_message_buf = buffer_create(steam_lobby_max_chat_message_size, buffer_fixed, 1);
request_lobbies = 0;
rtt_list = ds_list_create();
rtt_curr = 0;
rtt_time = current_time;
//
/*if (is_primary) {
	window_set_position(window_get_x() - window_get_width() div 2, window_get_y());
	steam_lobby_create(steam_lobby_type_public, 2);
} else {
	window_set_position(window_get_x() + window_get_width() div 2, window_get_y());
	request_lobbies = 1;
}*/
enum test_network_packet {
	ping = 10,
	hello = 11,
}