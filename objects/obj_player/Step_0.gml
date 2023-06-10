if (
keyboard_check(ord("D"))
&& tilemap_get_at_pixel(tiles, bbox_right, bbox_top) == 0
&& tilemap_get_at_pixel(tiles, bbox_right, bbox_bottom - player_speed) == 0
&& tilemap_get_at_pixel(tiles, bbox_right, bbox_bottom - (bbox_bottom - bbox_top)/2 - player_speed) == 0
) {
    sprite_index = sprt_run_player;
    x += player_speed;
    image_xscale = 1;
}
else if (keyboard_check(ord("A")) && tilemap_get_at_pixel(tiles, bbox_left, y) == 0) {
    sprite_index = sprt_run_player;
    x -= player_speed;
    image_xscale = -1;
}

if (keyboard_check_pressed(vk_space) && tilemap_get_at_pixel(tiles, x, bbox_top) == 0 && tilemap_get_at_pixel(tiles, x, bbox_bottom) != 0 && grounded) {
	y -= player_speed * 10;
}

if (!grounded) {
	y += 0.5;
}
else {
    sprite_index = sprt_idle_player;
}


if keyboard_check(vk_backspace)
{
    room_restart()
}
