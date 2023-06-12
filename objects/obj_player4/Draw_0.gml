draw_self()

if (tilemap_get_at_pixel(tiles, x, bbox_bottom + player_vspeed)) && keyboard_check_pressed(vk_space)
{
	draw_text(x, y-25, "to tentando pular")	
}

if (tilemap_get_at_pixel(tiles, x, bbox_bottom + player_vspeed))
{
	draw_text(x, y-25, "to pisando no chão")	
}
/*
draw_rectangle (bbox_right, bbox_top, bbox_left, bbox_bottom, 1)
if (tilemap_get_at_pixel(tiles, x, bbox_bottom + sign(player_vspeed) +1))
	{
		draw_text(x, y - 20, "estou tocando no chão")	
	}
*/


