trace_log = ds_list_create();
window_set_caption("[" + steam_get_persona_name() + "]");
var s = "Native extension is ";
if (!steam_gml_is_available()) s += "not ";
trace(s + "loaded.");
trace("API flags: " + string(steam_gml_api_flags()));
//
instance_create_layer(0, 0, layer, obj_test_menu);
