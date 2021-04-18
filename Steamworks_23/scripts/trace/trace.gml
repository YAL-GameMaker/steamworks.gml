function trace() {
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
}
