#define steam_inventory_result_get_items
/// steam_inventory_result_get_items(result:steam_inventory_result)->array
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
		_struct_1.inst = buffer_read(_buf, buffer_u64);
		_struct_1.def = buffer_read(_buf, buffer_s32);
		_struct_1.quantity = buffer_read(_buf, buffer_u16);
		_struct_1.flags = buffer_read(_buf, buffer_u16);
		_arr_0[_ind_0] = _struct_1;
	}
	return _arr_0;
} else
//*/
{
	
	var _len_0 = buffer_read(_buf, buffer_u32);
	var _arr_0 = array_create(_len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = array_create(4); // steam_inventory_result_item
		_struct_1[0] = buffer_read(_buf, buffer_u64); // inst
		_struct_1[1] = buffer_read(_buf, buffer_s32); // def
		_struct_1[2] = buffer_read(_buf, buffer_u16); // quantity
		_struct_1[3] = buffer_read(_buf, buffer_u16); // flags
		_arr_0[_ind_0] = _struct_1;
	}
	return _arr_0;
}

#define steam_inventory_add_promo_items
/// steam_inventory_add_promo_items(item_defs:array<int>)->steam_inventory_result
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
/// steam_inventory_consume_item(item_inst:int, quantity:int)->steam_inventory_result
var _buf = steam_gml_prepare_buffer(12);
buffer_write(_buf, buffer_u64, argument0);
buffer_write(_buf, buffer_u32, argument1);
if (steam_inventory_consume_item_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_exchange_items
/// steam_inventory_exchange_items(create:array<any>, destroy:array<any>)->int
var _buf = steam_gml_prepare_buffer(16);
// GMS >= 2.3:
if (steam_gml_use_structs) {
	
	var _arr_0 = argument0;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_create_item_t
		buffer_write(_buf, buffer_s32, _struct1.def);
		buffer_write(_buf, buffer_u32, _struct1.quantity);
	}
	var _arr_0 = argument1;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_destroy_item_t
		buffer_write(_buf, buffer_u64, _struct1.item);
		buffer_write(_buf, buffer_u32, _struct1.quantity);
		buffer_seek(_buf, buffer_seek_relative, 4);
	}
} else
//*/
{
	
	var _arr_0 = argument0;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_create_item_t
		buffer_write(_buf, buffer_s32, struct_1[0]); // def
		buffer_write(_buf, buffer_u32, struct_1[1]); // quantity
	}
	var _arr_0 = argument1;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_destroy_item_t
		buffer_write(_buf, buffer_u64, struct_1[0]); // item
		buffer_write(_buf, buffer_u32, struct_1[1]); // quantity
		buffer_seek(_buf, buffer_seek_relative, 4);
	}
}
if (steam_inventory_exchange_items_raw(buffer_get_address(_buf))) {
	buffer_seek(_buf, buffer_seek_start, 0);
	return buffer_read(_buf, buffer_s32);
} else return undefined;

#define steam_inventory_generate_items
/// steam_inventory_generate_items(create:array<any>)->int
var _buf = steam_gml_prepare_buffer(8);
// GMS >= 2.3:
if (steam_gml_use_structs) {
	
	var _arr_0 = argument0;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_create_item_t
		buffer_write(_buf, buffer_s32, _struct1.def);
		buffer_write(_buf, buffer_u32, _struct1.quantity);
	}
} else
//*/
{
	
	var _arr_0 = argument0;
	var _len_0 = array_length_1d(_arr_0);
	buffer_write(_buf, buffer_u32, _len_0);
	for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
		var _struct_1 = _arr_0[_ind_0]; // steam_inventory_create_item_t
		buffer_write(_buf, buffer_s32, struct_1[0]); // def
		buffer_write(_buf, buffer_u32, struct_1[1]); // quantity
	}
}
if (steam_inventory_generate_items_raw(buffer_get_address(_buf))) {
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
} else
//*/
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

