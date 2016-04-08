steam_net_update();
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
    trace("Packet #" + string(index));
    switch (index) {
        case 10:
            trace("Ping");
            buffer_seek(outbuf, buffer_seek_start, 0);
            buffer_write(outbuf, buffer_u8, 10);
            steam_net_packet_send(sender, outbuf, 4, 0);
            break;
        default:
            trace("Unknown packet.");
            break;
    }
}

