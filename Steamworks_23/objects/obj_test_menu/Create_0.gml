replaceWith = function(obj) {
	var q = instance_create_layer(0, 0, layer, obj);
	instance_destroy();
	return q;
}
var av = steam_get_user_avatar(steam_get_user_steam_id(), steam_user_avatar_size_large);
if (av != -1) {
	avatar_sprite = steam_image_create_sprite(av);
} else avatar_sprite = -1;