test_button_pre();
if (test_button("Create a lobby")) {
	steam_lobby_create(steam_lobby_type_public, 2);
}
if (test_button("Find a lobby")) {
	request_lobbies = 1;
}
if (steam_lobby_get_lobby_id() != 0) {
	test_button("Ping: " + string(rtt_curr) + "ms");
	if (test_button("Leave lobby")) {
		steam_lobby_leave();
	}
}