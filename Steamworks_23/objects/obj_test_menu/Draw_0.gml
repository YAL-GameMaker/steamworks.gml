if (sprite_exists(avatar_sprite)) {
	draw_sprite(avatar_sprite, 0, room_width - sprite_get_width(avatar_sprite) - 4, 4);
}
test_button_pre();
if (test_button("Networking")) return replaceWith(obj_test_network);
if (test_button("Steam Input API")) return replaceWith(obj_test_controller);
if (test_button("Misc")) return replaceWith(obj_test_misc);
