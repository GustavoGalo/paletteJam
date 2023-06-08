
if (
keyboard_check(vk_right)
&& tilemap_get_at_pixel(tiles, bbox_right, y) == 0
&& tilemap_get_at_pixel(tiles, bbox_right, y - 16) == 0
) {
	sprite_index = sprt_run_player;
	x += player_speed;
	image_xscale = 1;
}
else if (keyboard_check(vk_left) && tilemap_get_at_pixel(tiles, bbox_left, y) == 0) {
	sprite_index = sprt_run_player;
	x -= player_speed;
	image_xscale = -1;
}
else {
	sprite_index = sprt_idle_player;
}

if (keyboard_check(vk_up)) {
	y -= player_speed;
}

//show_debug_message(bbox_bottom);

if (tilemap_get_at_pixel(tiles, x, bbox_bottom) == 0) {
	show_debug_message("enter if")
	gravity = 0.1;
} else {
	show_debug_message("enter else")
	gravity = 0;
}
