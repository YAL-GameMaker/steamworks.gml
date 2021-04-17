// NB! these are copied from /Steamworks_23 to other projects

#define steam_ugc_delete_item
/// (published_file_id) 
steam_ugc_delete_item_raw(steam_id_get_high(argument0), steam_id_get_low(argument0));

#define steam_get_app_ownership_ticket_data
/// (buffer, ?app_id)->[size_total, ofs_app_id, ofs_steam_id, ofs_signature, size_signature]
var l_buf = argument[0];
var l_app_id = argument_count > 1 ? argument[1] : steam_get_app_id();
var b = steam_gml_prepare_buffer(4 * 5);
buffer_seek(b, buffer_seek_start, 0);
buffer_write(b, buffer_u32, l_app_id);
buffer_write(b, buffer_u32, buffer_get_size(l_buf));
steam_get_app_ownership_ticket_data_raw(buffer_get_address(l_buf), buffer_get_address(b));
buffer_seek(b, buffer_seek_start, 0);
var r = array_create(5);
for (var i = 0; i < 5; i++) {
	r[i] = buffer_read(b, buffer_u32);
}
return r;

#define steam_user_request_encrypted_app_ticket
/// (?bufferOrStringToInclude, ?bufferToIncludeSize)
var l_data = argument_count > 0 ? argument[0] : undefined;
var l_size = argument_count > 1 ? argument[1] : undefined;
if (l_data == undefined) {
	l_data = "";
	l_size = 0;
} else if (is_string(l_data)) {
	if (l_size == undefined) l_size = string_byte_length(l_data);
} else {
	if (l_size == undefined) l_size = buffer_get_size(l_data);
	l_data = buffer_get_address(l_data);
}
return steam_user_request_encrypted_app_ticket_raw(l_data, l_size);
