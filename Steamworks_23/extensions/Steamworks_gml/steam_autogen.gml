#define steam_inventory_result_get_status
/// steam_inventory_result_get_status(inv_result:steam_inventory_result)->int
var _buf = steam_gml_prepare_buffer(4);
buffer_write(_buf, buffer_s32, argument0);
return steam_inventory_result_get_status_raw(buffer_get_address(_buf));

#define steam_inventory_result_get_unix_timestamp
/// steam_inventory_result_get_unix_timestamp(result:steam_inventory_result)->int
var _buf = steam_gml_prepare_buffer(4);
buffer_write(_buf, buffer_s32, argument0);
return steam_inventory_result_get_unix_timestamp_raw(buffer_get_address(_buf));

#define steam_inventory_result_get_item_property
/// steam_inventory_result_get_item_property(inv_result:steam_inventory_result, item_index:int, prop_name:int)->int
var _buf = steam_gml_prepare_buffer(9);
buffer_write(_buf, buffer_s32, argument0);
buffer_write(_buf, buffer_s32, argument1);
return steam_inventory_result_get_item_property_raw(buffer_get_address(_buf), argument2);

#define steam_inventory_result_get_items
/// steam_inventory_result_get_items(inv_result:steam_inventory_result)->array<any>
var _buf = steam_gml_prepare_buffer(8);
buffer_write(_buf, buffer_s32, argument0);
var __size__ = steam_inventory_result_get_items_raw(buffer_get_address(_buf));
if (__size__ == 0) return undefined;
if (__size__ <= 4) return [];
if (buffer_get_size(_buf) < __size__) buffer_resize(_buf, __size__);
steam_inventory_result_get_items_raw_post(buffer_get_address(_buf));
buffer_seek(_buf, buffer_seek_start, 0);
// GMS >= 2.3:
if (steam_gml_use_structs) {
	var _len_0 = buffer_read(_buf, buffer_u32);
	var _arr_0 = array_create(_len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = {}; // steam_inventory_result_item
		_struct_1.item_id = buffer_read(_buf, buffer_u64);
		_struct_1.item_def = buffer_read(_buf, buffer_s32);
		_struct_1.quantity = buffer_read(_buf, buffer_u16);
		_struct_1.flags = buffer_read(_buf, buffer_u16);
		_arr_0[_ind_0] = _struct_1;
	}
	return _arr_0;
} else //*/
{
	var _len_0 = buffer_read(_buf, buffer_u32);
	var _arr_0 = array_create(_len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = array_create(4); // steam_inventory_result_item
		_struct_1[0] = buffer_read(_buf, buffer_u64); // item_id
		_struct_1[1] = buffer_read(_buf, buffer_s32); // item_def
		_struct_1[2] = buffer_read(_buf, buffer_u16); // quantity
		_struct_1[3] = buffer_read(_buf, buffer_u16); // flags
		_arr_0[_ind_0] = _struct_1;
	}
	return _arr_0;
}

#define steam_inventory_result_destroy
/// steam_inventory_result_destroy(inv_result:steam_inventory_result)->bool
var _buf = steam_gml_prepare_buffer(4);
buffer_write(_buf, buffer_s32, argument0);
return steam_inventory_result_destroy_raw(buffer_get_address(_buf));

#define steam_inventory_trigger_item_drop
/// steam_inventory_trigger_item_drop(item_def:steam_inventory_item_def)->steam_inventory_result
var _buf = steam_gml_prepare_buffer(4);
buffer_write(_buf, buffer_s32, argument0);
if (steam_inventory_trigger_item_drop_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_add_promo_item
/// steam_inventory_add_promo_item(item_def:steam_inventory_item_def)->steam_inventory_result
var _buf = steam_gml_prepare_buffer(4);
buffer_write(_buf, buffer_s32, argument0);
if (steam_inventory_add_promo_item_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_add_promo_items
/// steam_inventory_add_promo_items(item_defs:array<steam_inventory_item_def>)->steam_inventory_result
var _buf = steam_gml_prepare_buffer(8);
var _arr_0 = argument0;
var _len_0 = array_length_1d(_arr_0);
buffer_write(_buf, buffer_u32, _len_0);
for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
	buffer_write(_buf, buffer_s32, _arr_0[_ind_0]);
}
if (steam_inventory_add_promo_items_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_consume_item
/// steam_inventory_consume_item(item_id:steam_inventory_item_id, quantity:int)->steam_inventory_result
var _buf = steam_gml_prepare_buffer(12);
buffer_write(_buf, buffer_u64, argument0);
buffer_write(_buf, buffer_u32, argument1);
if (steam_inventory_consume_item_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_exchange_items
/// steam_inventory_exchange_items(create:array<any>, destroy:array<any>)->steam_inventory_result
var _buf = steam_gml_prepare_buffer(16);
// GMS >= 2.3:
if (steam_gml_use_structs) {
	var _arr_0 = argument0;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_create_item_t
		buffer_write(_buf, buffer_s32, _struct1.item_def);
		buffer_write(_buf, buffer_u32, _struct1.quantity);
	}
	var _arr_0 = argument1;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_destroy_item_t
		buffer_write(_buf, buffer_u64, _struct1.item_id);
		buffer_write(_buf, buffer_u32, _struct1.quantity);
		buffer_seek(_buf, buffer_seek_relative, 4);
	}
} else //*/
{
	var _arr_0 = argument0;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_create_item_t
		buffer_write(_buf, buffer_s32, _struct_1[0]); // item_def
		buffer_write(_buf, buffer_u32, _struct_1[1]); // quantity
	}
	var _arr_0 = argument1;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_destroy_item_t
		buffer_write(_buf, buffer_u64, _struct_1[0]); // item_id
		buffer_write(_buf, buffer_u32, _struct_1[1]); // quantity
		buffer_seek(_buf, buffer_seek_relative, 4);
	}
}
if (steam_inventory_exchange_items_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_generate_items
/// steam_inventory_generate_items(create:array<any>)->steam_inventory_result
var _buf = steam_gml_prepare_buffer(8);
// GMS >= 2.3:
if (steam_gml_use_structs) {
	var _arr_0 = argument0;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_create_item_t
		buffer_write(_buf, buffer_s32, _struct1.item_def);
		buffer_write(_buf, buffer_u32, _struct1.quantity);
	}
} else //*/
{
	var _arr_0 = argument0;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_create_item_t
		buffer_write(_buf, buffer_s32, _struct_1[0]); // item_def
		buffer_write(_buf, buffer_u32, _struct_1[1]); // quantity
	}
}
if (steam_inventory_generate_items_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_get_all_items
/// steam_inventory_get_all_items()->steam_inventory_result
var _buf = steam_gml_prepare_buffer(4);
if (steam_inventory_get_all_items_raw(buffer_get_address(_buf))) {
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_request_eligible_promo_item_defs
/// steam_inventory_request_eligible_promo_item_defs(user_id:int = 0)->bool
var _buf = steam_gml_prepare_buffer(8);
if (argument_count >= 0) {
	buffer_write(_buf, buffer_bool, true);
	buffer_write(_buf, buffer_u64, argument[0]);
} else buffer_write(_buf, buffer_bool, false);
return steam_inventory_request_eligible_promo_item_defs_raw(buffer_get_address(_buf));

#define steam_inventory_get_items_by_id
/// steam_inventory_get_items_by_id(item_ids:array<steam_inventory_item_id>)->steam_inventory_result
var _buf = steam_gml_prepare_buffer(8);
var _arr_0 = argument0;
var _len_0 = array_length_1d(_arr_0);
buffer_write(_buf, buffer_u32, _len_0);
for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
	buffer_write(_buf, buffer_u64, _arr_0[_ind_0]);
}
if (steam_inventory_get_items_by_id_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_start_update_properties
/// steam_inventory_start_update_properties()->steam_inventory_update_handle
var _buf = steam_gml_prepare_buffer(8);
if (steam_inventory_start_update_properties_raw(buffer_get_address(_buf))) {
	return buffer_read(_buf, buffer_u64);
} else return undefined;

#define steam_inventory_set_property_bool
/// steam_inventory_set_property_bool(handle:steam_inventory_update_handle, item_id:steam_inventory_item_id, prop_name:int, value:bool)->bool
var _buf = steam_gml_prepare_buffer(18);
buffer_write(_buf, buffer_u64, argument0);
buffer_write(_buf, buffer_u64, argument1);
buffer_write(_buf, buffer_bool, argument3);
return steam_inventory_set_property_bool_raw(buffer_get_address(_buf), argument2);

#define steam_inventory_set_property_float
/// steam_inventory_set_property_float(handle:steam_inventory_update_handle, item_id:steam_inventory_item_id, prop_name:int, value:number)->bool
var _buf = steam_gml_prepare_buffer(21);
buffer_write(_buf, buffer_u64, argument0);
buffer_write(_buf, buffer_u64, argument1);
buffer_write(_buf, buffer_f32, argument3);
return steam_inventory_set_property_float_raw(buffer_get_address(_buf), argument2);

#define steam_inventory_set_property_int
/// steam_inventory_set_property_int(handle:steam_inventory_update_handle, item_id:steam_inventory_item_id, prop_name:int, value:int)->bool
var _buf = steam_gml_prepare_buffer(25);
buffer_write(_buf, buffer_u64, argument0);
buffer_write(_buf, buffer_u64, argument1);
buffer_write(_buf, buffer_u64, argument3);
return steam_inventory_set_property_int_raw(buffer_get_address(_buf), argument2);

#define steam_inventory_set_property_string
/// steam_inventory_set_property_string(handle:steam_inventory_update_handle, item_id:steam_inventory_item_id, prop_name:int, value:int)->bool
var _buf = steam_gml_prepare_buffer(18);
buffer_write(_buf, buffer_u64, argument0);
buffer_write(_buf, buffer_u64, argument1);
return steam_inventory_set_property_string_raw(buffer_get_address(_buf), argument2, argument3);

#define steam_inventory_remove_property
/// steam_inventory_remove_property(handle:steam_inventory_update_handle, item_id:steam_inventory_item_id, prop_name:int)->bool
var _buf = steam_gml_prepare_buffer(17);
buffer_write(_buf, buffer_u64, argument0);
buffer_write(_buf, buffer_u64, argument1);
return steam_inventory_remove_property_raw(buffer_get_address(_buf), argument2);

#define steam_inventory_submit_update_properties
/// steam_inventory_submit_update_properties(handle:steam_inventory_update_handle)->steam_inventory_result
var _buf = steam_gml_prepare_buffer(8);
buffer_write(_buf, buffer_u64, argument0);
if (steam_inventory_submit_update_properties_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_load_item_definitions
/// steam_inventory_load_item_definitions()->bool
var _buf = steam_gml_prepare_buffer(1);
return steam_inventory_load_item_definitions_raw(buffer_get_address(_buf));

#define steam_inventory_get_item_price
/// steam_inventory_get_item_price(item_def:steam_inventory_item_def)->int?
var _buf = steam_gml_prepare_buffer(9);
buffer_write(_buf, buffer_s32, argument0);
if (steam_inventory_get_item_price_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		_val_0 = buffer_read(_buf, buffer_u64);
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define steam_inventory_get_items_with_prices
/// steam_inventory_get_items_with_prices()->array<any>?
var _buf = steam_gml_prepare_buffer(9);
var __size__ = steam_inventory_get_items_with_prices_raw(buffer_get_address(_buf));
if (__size__ == 0) return undefined;
if (__size__ <= 4) return [];
if (buffer_get_size(_buf) < __size__) buffer_resize(_buf, __size__);
steam_inventory_get_items_with_prices_raw_post(buffer_get_address(_buf));
buffer_seek(_buf, buffer_seek_start, 0);
var _val_0;
if (buffer_read(_buf, buffer_bool)) {
	var _len_1 = buffer_read(_buf, buffer_u32);
	var _arr_1 = array_create(_len_1);
	for (var _ind_1 = 0; _ind_1 < _len_1; _ind_1++) {
		var _struct_2 = array_create(2); // steam_inventory_get_item_prices_t
		_struct_2[0] = buffer_read(_buf, buffer_s32); // item_def
		buffer_seek(_buf, buffer_seek_relative, 4); // align to 8 (offset 8)
		_struct_2[1] = buffer_read(_buf, buffer_u64); // price
		_arr_1[_ind_1] = _struct_2;
	}
	_val_0 = _arr_1;
} else _val_0 = undefined;
return _val_0;

#define steam_inventory_request_prices
/// steam_inventory_request_prices()->bool
var _buf = steam_gml_prepare_buffer(1);
return steam_inventory_request_prices_raw(buffer_get_address(_buf));

#define steam_inventory_transfer_item_quantity
/// steam_inventory_transfer_item_quantity(source_item_id:steam_inventory_item_id, quantity:int, dest_item_id:steam_inventory_item_id)->steam_inventory_result
var _buf = steam_gml_prepare_buffer(20);
buffer_write(_buf, buffer_u64, argument0);
buffer_write(_buf, buffer_u32, argument1);
buffer_write(_buf, buffer_u64, argument2);
if (steam_inventory_transfer_item_quantity_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_get_friends_game_info
/// steam_get_friends_game_info()->array<any>
var _buf = steam_gml_prepare_buffer(8);
var __size__ = steam_get_friends_game_info_raw(buffer_get_address(_buf));
if (__size__ == 0) return undefined;
if (__size__ <= 4) return [];
if (buffer_get_size(_buf) < __size__) buffer_resize(_buf, __size__);
steam_get_friends_game_info_raw_post(buffer_get_address(_buf));
buffer_seek(_buf, buffer_seek_start, 0);
// GMS >= 2.3:
if (steam_gml_use_structs) {
	var _len_0 = buffer_read(_buf, buffer_u32);
	var _arr_0 = array_create(_len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = {}; // steam_get_friends_game_info_t
		_struct_1.friendId = buffer_read(_buf, buffer_u64);
		_struct_1.gameId = buffer_read(_buf, buffer_u32);
		buffer_seek(_buf, buffer_seek_relative, 4); // align to 8 (offset 16)
		_struct_1.lobbyId = buffer_read(_buf, buffer_u64);
		_struct_1.name = steam_gml_read_chars(_buf, 32);
		_arr_0[_ind_0] = _struct_1;
	}
	return _arr_0;
} else //*/
{
	var _len_0 = buffer_read(_buf, buffer_u32);
	var _arr_0 = array_create(_len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = array_create(4); // steam_get_friends_game_info_t
		_struct_1[0] = buffer_read(_buf, buffer_u64); // friendId
		_struct_1[1] = buffer_read(_buf, buffer_u32); // gameId
		buffer_seek(_buf, buffer_seek_relative, 4); // align to 8 (offset 16)
		_struct_1[2] = buffer_read(_buf, buffer_u64); // lobbyId
		_struct_1[3] = steam_gml_read_chars(_buf, 32); // name
		_arr_0[_ind_0] = _struct_1;
	}
	return _arr_0;
}

#define steam_get_user_avatar
/// steam_get_user_avatar(user_id:int, avatar_size:int)->int
var _buf = steam_gml_prepare_buffer(12);
buffer_write(_buf, buffer_u64, argument0);
buffer_write(_buf, buffer_s32, argument1);
return steam_get_user_avatar_raw(buffer_get_address(_buf));

#define steam_image_get_size
/// steam_image_get_size(img:int)->
var _buf = steam_gml_prepare_buffer(9);
buffer_write(_buf, buffer_s32, argument0);
if (steam_image_get_size_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		var _tup_1 = array_create(2);
		_tup_1[0] = buffer_read(_buf, buffer_s32);
		_tup_1[1] = buffer_read(_buf, buffer_s32);
		_val_0 = _tup_1;
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define steam_image_get_rgba
/// steam_image_get_rgba(img:int, dest_buf:buffer)->bool
var _buf = steam_gml_prepare_buffer(12);
buffer_write(_buf, buffer_s32, argument0);
var _val_0 = argument1;
if (buffer_exists(_val_0)) {
	buffer_write(_buf, buffer_u64, int64(buffer_get_address(_val_0)));
	buffer_write(_buf, buffer_s32, buffer_get_size(_val_0));
	buffer_write(_buf, buffer_s32, buffer_tell(_val_0));
} else {
	buffer_write(_buf, buffer_u64, 0);
	buffer_write(_buf, buffer_s32, 0);
	buffer_write(_buf, buffer_s32, 0);
}
return steam_image_get_rgba_raw(buffer_get_address(_buf));

#define steam_image_get_bgra
/// steam_image_get_bgra(img:int, dest_buf:buffer)->bool
var _buf = steam_gml_prepare_buffer(12);
buffer_write(_buf, buffer_s32, argument0);
var _val_0 = argument1;
if (buffer_exists(_val_0)) {
	buffer_write(_buf, buffer_u64, int64(buffer_get_address(_val_0)));
	buffer_write(_buf, buffer_s32, buffer_get_size(_val_0));
	buffer_write(_buf, buffer_s32, buffer_tell(_val_0));
} else {
	buffer_write(_buf, buffer_u64, 0);
	buffer_write(_buf, buffer_s32, 0);
	buffer_write(_buf, buffer_s32, 0);
}
return steam_image_get_bgra_raw(buffer_get_address(_buf));

