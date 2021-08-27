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

#define steam_image_create_sprite
/// (img:steam_image_id)->sprite
var l_img = argument0;
var l_dims = steam_image_get_size(l_img);
if (l_dims == undefined) return -1;
var l_cols = buffer_create(l_dims[0] * l_dims[1] * 4, buffer_fixed, 1);
var l_sprite, l_ok;
// GMS >= 2.0:
l_ok = steam_image_get_rgba(l_img, l_cols);
/*/
l_ok = steam_image_get_bgra(l_img, l_cols);
//*/
if (l_ok) {
	var l_surf = surface_create(l_dims[0], l_dims[1]);
	buffer_set_surface(l_cols, l_surf, 0);
	l_sprite = sprite_create_from_surface(l_surf, 0, 0, l_dims[0], l_dims[1], false, false, 0, 0);
	surface_free(l_surf);
} else l_sprite = -1;
buffer_delete(l_cols);
return l_sprite;