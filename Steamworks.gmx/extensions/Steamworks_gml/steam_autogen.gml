#define steam_get_friends_game_info
/// steam_get_friends_game_info()->array<any>
var _buf = steam_gml_prepare_buffer(8);
var __size__ = steam_get_friends_game_info_raw(buffer_get_address(_buf));
if (__size__ == 0) return undefined;
if (__size__ <= 4) return [];
if (buffer_get_size(_buf) < __size__) buffer_resize(_buf, __size__);
steam_get_friends_game_info_raw_post(buffer_get_address(_buf));
buffer_seek(_buf, buffer_seek_start, 0);
var _len_0 = buffer_read(_buf, buffer_u32);
var _arr_0 = array_create(_len_0);
for (var _ind_0 = 0; _ind_0 < _len_0; _ind_0++) {
	var _struct_1 = /* steam_get_friends_game_info_t */array_create(4);
	_struct_1[0/* friendId */] = buffer_read(_buf, buffer_u64);
	_struct_1[1/* gameId */] = buffer_read(_buf, buffer_u32);
	buffer_seek(_buf, buffer_seek_relative, 4); // align to 8 (offset 16)
	_struct_1[2/* lobbyId */] = buffer_read(_buf, buffer_u64);
	_struct_1[3/* name */] = steam_gml_read_chars(_buf, 32);
	_arr_0[_ind_0] = _struct_1;
}
return _arr_0;

