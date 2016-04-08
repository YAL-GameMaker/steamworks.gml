#define test_steam
test_steam_trace();
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
        trace("Initial ping: " + string(steam_net_packet_send(owner, b, 4, 0)));
        buffer_delete(b);
        break;
}

#define test_steam_trace
var s = "{ ";
var o = async_load;
var n = ds_map_size(o);
var k = ds_map_find_first(o);
for (var i = 0; i < n; i += 1) {
    if (i > 0) s += ", ";
    s += string(k) + ": ";
    var v = o[?k];
    if (is_string(v)) {
        s += '"' + string(v) + '"';
    } else s += string(v);
    k = ds_map_find_next(o, k);
}
s += " }";
trace("steam_event " + s);