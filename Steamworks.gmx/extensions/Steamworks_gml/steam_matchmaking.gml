// NB! these are copied from /Steamworks_23 to other projects

#define steam_lobby_join_id
/// steam_lobby_join_id(lobby_id)->ok? : Joins the given lobby
var lobby_id = argument0;
return steam_lobby_join_id_raw(steam_id_get_high(lobby_id), steam_id_get_low(lobby_id));

#define steam_lobby_get_lobby_id
/// steam_lobby_get_lobby_id()->lobby_id : Returns the lobby ID of the current lobby
return steam_id_create(steam_lobby_get_lobby_id_high(), steam_lobby_get_lobby_id_low());

#define steam_lobby_get_owner_id
/// steam_lobby_get_owner_id()->user_id : Returns the user ID of the authoritative user in the lobby.
return steam_id_create(steam_lobby_get_owner_id_high(), steam_lobby_get_owner_id_low());

#define steam_lobby_set_owner_id
/// (user_id)->bool : Transfers lobby ownership
return steam_lobby_set_owner_id_raw(steam_id_get_high(argument0), steam_id_get_low(argument0));

#define steam_lobby_get_member_id
/// steam_lobby_get_member_id(index)->user_id : Returns the user ID of the given user in the lobby.
var i = argument0;
return steam_id_create(steam_lobby_get_member_id_high(i), steam_lobby_get_member_id_low(i));

#define steam_lobby_list_get_lobby_id
/// steam_lobby_list_get_lobby_id(index)->lobby_id : Returns the ID of the given lobby.
var i = argument0;
return steam_id_create(steam_lobby_list_get_lobby_id_high(i), steam_lobby_list_get_lobby_id_low(i));

#define steam_lobby_list_get_lobby_owner_id
/// steam_lobby_list_get_lobby_owner_id(index)->user_id : Returns the user ID of the owner of the given lobby.
var i = argument0;
return steam_id_create(steam_lobby_list_get_lobby_owner_id_high(i), steam_lobby_list_get_lobby_owner_id_low(i));

#define steam_lobby_list_get_lobby_member_id
/// steam_lobby_list_get_lobby_owner_id(lobby_index, member_index)->user_id : Returns the user ID of the given member of the given lobby.
var i = argument0, k = argument1;
return steam_id_create(steam_lobby_list_get_lobby_member_id_high(i, k), steam_lobby_list_get_lobby_member_id_low(i, k));