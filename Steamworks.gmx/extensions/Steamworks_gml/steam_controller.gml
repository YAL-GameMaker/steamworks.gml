// NB! these are copied from /Steamworks_23 to other projects

#define steam_controller_get_max_count
/// steam_controller_get_max_count()->int: Returns the maximum number of controllers
var n = global.g_steam_controller_get_max_count;
if (n < 0) {
	n = steam_controller_get_max_count_raw();
	global.g_steam_controller_get_max_count = n;
}
return n;

#define steam_controller_get_ids
/// steam_controller_get_ids(?out:array<index>)->array
var b = steam_gml_prepare_buffer(steam_controller_get_max_count() * 4);
var n = steam_controller_get_ids_raw(buffer_get_address(b));
var w, r;
if (argument_count > 0) {
	w = argument[1]; r = n;
} else {
	w = array_create(n); r = w;
}
for (var i = 0; i < n; i++) {
	w[@i] = buffer_read(b, buffer_s32);
}
return r;

#define steam_controller_get_max_origins
/// steam_controller_get_max_origins()->int
var n = global.g_steam_controller_get_max_origins;
if (n < 0) {
	n = steam_controller_get_max_origins_raw();
	global.g_steam_controller_get_max_origins = n;
}
return n;

#define steam_controller_get_origins_raw
/// steam_controller_get_origins_raw(found, buffer, out)->array~
var n = argument0;
var b = argument1;
var w = argument2;
if (!is_array(w)) {
    w = array_create(n); r = w;
} else r = n;
for (var i = 0; i < n; i++) {
	w[@i] = buffer_read(b, buffer_s32);
}
return r;

#define steam_controller_get_digital_origins
/// steam_controller_get_digital_origins(controller, actionset_id, digital_id, ?out:array<origin>): as per GetDigitalActionOrigins
var b = steam_gml_prepare_buffer(steam_controller_get_max_origins() * 4);
var n = steam_controller_get_digital_origins_raw(argument[0], argument[1], argument[2], buffer_get_address(b));
var w; if (argument_count > 3) w = argument[3]; else w = undefined;
return steam_controller_get_origins_raw(n, b, w);

#define steam_controller_get_analog_origins
/// steam_controller_get_digital_origins(controller, actionset_id, analog_id, ?out:array<origin>): as per GetAnalogActionOrigins
var b = steam_gml_prepare_buffer(steam_controller_get_max_origins() * 4);
var n = steam_controller_get_analog_origins_raw(argument[0], argument[1], argument[2], buffer_get_address(b));
var w; if (argument_count > 3) w = argument[3]; else w = undefined;
return steam_controller_get_origins_raw(n, b, w);

#define steam_controller_get_analog_x
/// steam_controller_get_analog_x(controller, analog_id)->number: (-1..1) for sticks, delta for mouse
return steam_controller_get_analog_data(argument0, argument1, 2);

#define steam_controller_get_analog_y
/// steam_controller_get_analog_y(controller, analog_id)->number: (-1..1) for sticks, delta for mouse
return steam_controller_get_analog_data(argument0, argument1, 3);

#define steam_controller_get_analog_mode
/// steam_controller_get_analog_mode(controller, analog_id)->EControllerSourceMode
return steam_controller_get_analog_data(argument0, argument1, 1);

#define steam_controller_get_analog_status
/// steam_controller_get_analog_status(controller, analog_id)->bool
return steam_controller_get_analog_data(argument0, argument1, 0);