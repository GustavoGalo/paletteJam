if (instance_exists(obj_player4)) {
	draw_set_font(ft_menu);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_text(5, 10, $"LIFES: {obj_player4.lifes}");
}