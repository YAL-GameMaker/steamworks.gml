function test_create() {
	trace_log = ds_list_create();

	window_set_caption("[" + steam_get_persona_name() + "]");
	var s = "Native extension is ";
	if (!steam_gml_is_available()) s += "not ";
	trace(s + "loaded.");
	trace("API flags: " + string(steam_gml_api_flags()));

	test_create_controller();
	if (1) {
	    request_lobbies = -1;
	    exit;
	}

	test_params();

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




}
