switch (async_load[?"event_type"]) {
	case "lobby_list":
		if (steam_lobby_list_get_count() > 0) {
			trace("Oh, connecting!");
			trace(steam_lobby_list_get_data(0, "title"));
			steam_lobby_list_join(0);
		} else {
			trace("No lobbies found. Retrying.");
			request_lobbies = room_speed * 3;
		}
		break;
	case "lobby_created":
		steam_lobby_set_data("game", "steamworks.gml");
		steam_lobby_set_data("title", "steamworks.gml");
		break;
	case "lobby_joined":
		var b = buffer_create(16, buffer_fixed, 1);
		buffer_write(b, buffer_u8, 10);
		var owner = steam_lobby_get_owner_id();
		trace("Initial ping:", steam_net_packet_send(owner, b, 4, 0));
		buffer_delete(b);
		trace("Initial send:", steam_lobby_send_chat_message("hello!"));
		break;
	case "lobby_chat_update":
		var _from_id = int64(async_load[?"user_id_string"]);
		var _from_name = steam_get_user_persona_name_sync(_from_id);
		//trace("chat_update", _from_name)
		if (async_load[?"change_flags"] & steam_lobby_member_change_entered) {
			ds_list_clear(rtt_list);
			rtt_curr = 0;
			rtt_time = 0;
			//trace("Initial send:", steam_lobby_send_chat_message("hey"));
		}
		break;
	case "lobby_chat_message":
		var _msg_index = async_load[?"message_index"];
		var _from_id = int64(async_load[?"user_id_string"]);
		var _from_name = steam_get_user_persona_name_sync(_from_id);
		
		trace("A chat message from `" + _from_name
			+ "` (text): " + steam_lobby_get_chat_message_text(_msg_index));
		
		steam_lobby_get_chat_message_data(_msg_index, chat_message_buf);
		buffer_seek(chat_message_buf, buffer_seek_start, 0);
		trace("A chat message from `" + _from_name
			+ "` (buffer): " + buffer_read(chat_message_buf, buffer_string));
		break;
}