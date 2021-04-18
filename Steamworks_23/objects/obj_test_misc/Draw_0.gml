test_button_pre();
if (test_button("Show active friends")) {
	var arr = steam_get_friends_game_info();
	for (var i = 0; i < array_length(arr); i++) {
		trace(arr[i]);
	}
}