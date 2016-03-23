#define test_create
trace_log = ds_list_create();
window_set_caption("@ " + steam_get_persona_name());
test_params();
inbuf = buffer_create(16, buffer_grow, 1);
outbuf = buffer_create(16, buffer_grow, 1);
var u = steam_get_user_steam_id();
trace(u);
if (is_primary) {
    window_set_position(window_get_x() - window_get_width() div 2, window_get_y());
    steam_lobby_create(steam_lobby_type_friends_only, 2);
} else {
    window_set_position(window_get_x() + window_get_width() div 2, window_get_y());
    steam_lobby_list_request();
}


#define test_params
var argc = parameter_count(), i;
// workaround duplicate arguments:
if (argc mod 2 == 0) {
    var argc2 = argc div 2;
    for (i = 0; i < argc2; i++) {
        if (parameter_string(i) != parameter_string(i + argc2)) break;
    }
    if (i >= argc2) argc = argc2;
}
//
var argv = "";
is_secondary = false;
for (i = 0; i < argc; i++) {
    if (i > 0) argv += " ";
    var argi = parameter_string(i);
    if (string_pos(" ", argi)) {
        argi = '"' + argi + '"';
    }
    if (argi == "-secondary") is_secondary = true;
    argv += argi;
}
if (!is_secondary) {
    argv += " -secondary";
    argv = '"C:\Program Files\Sandboxie\Start.exe" /box:SteamBox ' + argv;
    clipboard_set_text(argv);
}