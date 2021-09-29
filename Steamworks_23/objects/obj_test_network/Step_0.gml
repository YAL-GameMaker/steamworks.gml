if (request_lobbies > 0 && --request_lobbies <= 0) {
	trace("Requesting lobbies.");
	steam_lobby_list_add_string_filter("game", "steamworks.gml", steam_lobby_list_filter_eq);
	steam_lobby_list_request();
}
while (steam_net_packet_receive()) {
	var sender = steam_net_packet_get_sender_id();
	steam_net_packet_get_data(inbuf);
	buffer_seek(inbuf, buffer_seek_start, 0);
	var index = buffer_read(inbuf, buffer_u8);
	//trace("Packet #" + string(index));
	switch (index) {
		case test_network_packet.ping:
			//trace("Ping");
			if (rtt_time > 0) {
				ds_list_add(rtt_list, current_time - rtt_time);
				if (ds_list_size(rtt_list) > 10) ds_list_delete(rtt_list, 0);
				var n = ds_list_size(rtt_list);
				rtt_curr = 0;
				for (var i = 0; i < n; i++) rtt_curr += rtt_list[|i];
				rtt_curr /= n;
			}
			rtt_time = current_time;
			buffer_seek(outbuf, buffer_seek_start, 0);
			buffer_write(outbuf, buffer_u8, 10);
			steam_net_packet_send(sender, outbuf, 4, 0);
			break;
		case test_network_packet.hello:
			trace("Got a greet!");
			break;
		default:
			trace("Unknown packet.");
			break;
	}
}