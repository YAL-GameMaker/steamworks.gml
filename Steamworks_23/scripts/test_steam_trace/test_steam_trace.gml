function test_steam_trace() {
	var s = "{ ";
	var o = async_load;
	var n = ds_map_size(o);
	var k = ds_map_find_first(o);
	for (var i = 0; i < n; i += 1) {
		if (i > 0) s += ", ";
		s += string(k) + ": ";
		var v = o[?k];
		if (is_string(v)) {
			s += "\"" + string(v) + "\"";
		} else s += string(v);
		k = ds_map_find_next(o, k);
	}
	s += " }";
	trace("steam_event " + s);



}
