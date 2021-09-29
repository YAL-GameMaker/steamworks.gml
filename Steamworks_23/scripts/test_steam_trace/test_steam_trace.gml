function test_steam_trace() {
	var _data = json_parse(json_encode(async_load));
	var _type = _data[$"event_type"];
	if (_type == undefined) return;
	var _out = _type + ": { ";
	variable_struct_remove(_data, "event_type");
	var _keys = variable_struct_get_names(_data);
	var n = array_length(_keys);
	for (var i = 0; i < n; i++) {
		var _key = _keys[i];
		if (i > 0) _out += ", ";
		_out += _key + ": " + json_stringify(_data[$_key]);
	}
	_out += " }";
	trace(_out);
}
