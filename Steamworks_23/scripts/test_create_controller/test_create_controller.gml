function test_create_controller() {
	steam_controller_init();
	var controllers = steam_controller_get_ids();
	if (array_length_1d(controllers) < 1) {
	    controller = -1;
	    trace("No controllers found.");
	    exit;
	} else controller = controllers[0];
	trace("Controller ID:", controller);
	//
	aset_menu = steam_controller_get_actionset_id("MenuControls");
	trace("Menu ActionSet ID:", aset_menu);
	aset_ingame = steam_controller_get_actionset_id("InGameControls");
	trace("Ingame ActionSet ID:", aset_ingame);
	//
	if (aset_ingame >= 0) {
	    trace("ActionSet changed?:", steam_controller_set_actionset(controller, aset_ingame));
	}
	trace("Current ActionSet ID:", steam_controller_get_actionset(controller));
	//
	bt_fire = steam_controller_get_digital_id("fire");
	trace("Fire ID:", bt_fire);
	bt_pause = steam_controller_get_digital_id("pause_menu");
	trace("Pause ID:", bt_pause);
	al_move = steam_controller_get_analog_id("move");
	trace("Move ID:", al_move);
	//
	trace("Fire origins:", steam_controller_get_digital_origins(controller, aset_ingame, bt_fire));
	trace("Pause origins:", steam_controller_get_digital_origins(controller, aset_menu, bt_pause));
	//



}
