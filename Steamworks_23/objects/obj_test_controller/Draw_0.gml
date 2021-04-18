if (controller < 0) exit;
steam_controller_update();
draw_text(100, 50,
    string_hash_to_newline(sfmt("Fire button state: Down=% Active=%", steam_controller_get_digital_value(controller, bt_fire), steam_controller_get_digital_status(controller, bt_fire))
    + sfmt("#Move stick state: X=% Y=% Active=%", 
        steam_controller_get_analog_x(controller, al_move), 
        steam_controller_get_analog_y(controller, al_move), 
        steam_controller_get_analog_status(controller, al_move)
    )
    + sfmt("#ActionSet: %", steam_controller_get_actionset(controller)))
);
//trace(steam_controller_get_digital_value(controller, bt_fire));