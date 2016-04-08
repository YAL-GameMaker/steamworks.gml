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
