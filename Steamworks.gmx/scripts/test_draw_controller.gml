if (controller < 0) exit;
draw_text(100, 50, "Fire state: " + string(steam_controller_get_digital_value(controller, bt_fire))
    + " " + string(steam_controller_get_digital_status(controller, bt_fire)));
//trace(steam_controller_get_digital_value(controller, bt_fire));
