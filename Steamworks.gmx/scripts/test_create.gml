trace_log = ds_list_create();
window_set_caption("[" + steam_get_persona_name() + "]");
trace("Flags: " + string(steam_net_api_flags()));
test_params();
// if account's nick starts with a dot, have it connect instead of hosting:
is_secondary = (string_char_at(steam_get_persona_name(), 1) == ".");
//
inbuf = buffer_create(16, buffer_grow, 1);
outbuf = buffer_create(16, buffer_grow, 1);
request_lobbies = 0;
//
if (is_primary) {
    window_set_position(window_get_x() - window_get_width() div 2, window_get_y());
    steam_lobby_create(steam_lobby_type_public, 2);
} else {
    window_set_position(window_get_x() + window_get_width() div 2, window_get_y());
    request_lobbies = 1;
}
