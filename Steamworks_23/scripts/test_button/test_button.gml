function test_button_pre() {
	draw_set_font(fnt_test);
	draw_set_color(c_white);
	x = 5;
	y = 5;
}
function test_button(label) {
	var w = 200;
	var h = string_height_ext(label, -1, w - 4);
	var _over = mouse_x >= x && mouse_y >= y && mouse_x < x + w && mouse_y < y + h;
	draw_set_alpha(_over ? 0.2 : 0.1);
	draw_rectangle(x, y, x + w, y + h, false);
	draw_set_alpha(1);
	draw_text_ext(x + 2, y, label, -1, w - 4);
	y += h + 5;
	return _over && mouse_check_button_pressed(mb_left);
}