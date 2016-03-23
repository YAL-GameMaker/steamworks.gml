#define trace
var r = "";
for (var i = 0; i < argument_count; i++) {
    r += string(argument[i]) + " ";
}
//if (string_pos("towards", r)) window_set_caption(r);
show_debug_message(r);
//
var o = trace_log;
ds_list_insert(o, 0, r);
var n = ds_list_size(o);
if (n > 32) ds_list_delete(o, n - 1);
//

#define trace_log_draw
/// trace_log_draw(x, y, width)
draw_set_font(fnt_test)
//
var o = trace_log, i;
var n = ds_list_size(o);
var _x = argument0;
var _y = argument1;
var w = argument2;
for (i = 0; i < n; i += 1) {
    var s = o[|i];
    _y -= string_height_ext(s, -1, w);
    draw_text_ext(_x, _y, s, -1, w);
    if (_y < 0) break;
}