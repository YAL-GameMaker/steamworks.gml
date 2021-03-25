// NB! these are copied from /Steamworks_23 to other projects

#define steam_id_create
/// steam_id_create(high, low)->steam_id
//#macro steam_id_use_int64 true
// (in versions 1.4.1757 and earlier, you'll need to set steam_id_use_int64 to false)
if (steam_id_use_int64) {
	return (argument0 << 32) | argument1;
} else {
	var r;
	r[1] = argument1;
	r[0] = argument0;
	return r;
}

#define steam_id_get_high
/// steam_id_get_high(steam_id)->int
if (steam_id_use_int64) {
	return (argument0 >> 32) & $FFFFFFFF;
} else return argument0[0];

#define steam_id_get_low
/// steam_id_get_low(steam_id)->int
if (steam_id_use_int64) {
	return argument0 & $FFFFFFFF;
} else return argument0[1];

#define steam_id_equals
/// steam_id_equals(steam_id1, steam_id2)->bool
if (steam_id_use_int64) {
	return argument0 == argument1;
} else return argument0[0] == argument1[0] && argument0[1] == argument1[1];

#define steam_id_from_int64
/// steam_id_from_int64(int64)->steam_id
if (steam_id_use_int64) {
	return argument0;
} else {
	var s = string(argument0);
	return steam_id_create(int64_from_string_high(s), int64_from_string_low(s));
}

#define steam_id_to_int64
/// steam_id_to_int64(steam_id)->int64
if (steam_id_use_int64) {
	return argument0;
} else {
	var q = argument0;
	return int64(int64_combine_string(steam_id_get_high(q), steam_id_get_low(q)));
}