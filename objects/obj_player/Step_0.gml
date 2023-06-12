#region VARIABLES

var bbox_side = 0;

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_space = keyboard_check_pressed(vk_space);

x_direction = (key_right - key_left);
x_speed = x_direction * player_speed;
sprite_index = sprt_idle_player;
if (x_direction != 0) {
	player_state = states.run;
	image_xscale = x_direction;
	sprite_index = sprt_run_player;
	if (x_direction > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
}
#endregion
#region HORIZONTAL COLLISION
if (tilemap_get_at_pixel(collision_tilemap, bbox_side + x_speed, bbox_top + 1) != 0 ||
	tilemap_get_at_pixel(collision_tilemap, bbox_side + x_speed, bbox_top + TILE_SIZE) != 0 ||
	tilemap_get_at_pixel(collision_tilemap, bbox_side + x_speed, bbox_bottom -	1) != 0 
) {
	x_speed = 0;
}
#endregion
#region GROUND COLLISION
if (tilemap_get_at_pixel(collision_tilemap, bbox_left, bbox_bottom + y_speed + 1) != 0 ||
	tilemap_get_at_pixel(collision_tilemap, bbox_right, bbox_bottom + y_speed + 1) != 0
) {
	 y_speed = 0;
	 can_jump = true;
}
else {
	y_speed += gravity_aceleration;
}
#endregion
#region JUMP & JUMP COLLISION
if (tilemap_get_at_pixel(collision_tilemap, bbox_left, bbox_top + jump_speed) == 0 &&
	tilemap_get_at_pixel(collision_tilemap, bbox_right, bbox_top + jump_speed) == 0
	) {
	can_jump = true;
}
else {
	can_jump = false;
}

if (key_space && can_jump) {
	y_speed = jump_speed;
	can_jump = false;
}

if (!can_jump) {
	if (
		tilemap_get_at_pixel(collision_tilemap, bbox_left, bbox_top + y_speed) != 0 ||
		tilemap_get_at_pixel(collision_tilemap, bbox_left, bbox_top + y_speed) != 0
	) {
		for (var i = 0; i < y_speed; i++) {
			if (tilemap_get_at_pixel(collision_tilemap, bbox_left, bbox_top + 1) == 0 ||
				tilemap_get_at_pixel(collision_tilemap, bbox_right, bbox_top + 1) == 0) {
				y++;
				y_speed++;
			}
		}

	}
}
#endregion

 #region DASH
 
 if (dash_Available = true) && (keyboard_check_pressed(ord("F")))
 {
	show_debug_message("tentei dar dash")
	dash_Direction = sign(x_speed)
	hspeed = dash_Direction * dash_Speed
	dash_Timer = dash_Duration
	dash_Available = false
 }
if hspeed != 0
 {
	with instance_create_depth(x,y,depth+1,obj_trail)
	{
		sprite_index = other.sprite_index;
		image_xscale = other.image_xscale;
		image_blend = c_fuchsia
		image_alpha = 0.7
	}
 }
 
 
 if (dash_Timer != 0)
 {
    dash_Timer -= 1     
 }

if (dash_Timer == 0)
{
    hspeed = 0
}
 
 if (dash_Available = false)
 {
    while (dash_Cooldown > 0)
    {
        dash_Cooldown --    
    }
    if dash_Cooldown == 0
    {
        dash_Available = true
        dash_Cooldown = 200
    }
 }
 #endregion

x += x_speed;
y += y_speed;

