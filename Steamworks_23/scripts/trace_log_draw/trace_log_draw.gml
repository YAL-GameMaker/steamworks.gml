/// @description  trace_log_draw(x, y, width)
/// @param x
/// @param  y
/// @param  width
function trace_log_draw(argument0, argument1, argument2) {
	draw_set_font(fnt_test)
	//
	var o = trace_log, i;
	var n = ds_list_size(o);
	var _x = argument0;
	var _y = argument1;
	var w = argument2;
	for (i = 0; i < n; i += 1) {
		var s = o[|i];
		_y -= string_height_ext(string_hash_to_newline(s), -1, w);
		draw_text_ext(_x, _y, string_hash_to_newline(s), -1, w);
		if (_y < 0) break;
	}
}
