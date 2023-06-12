#macro TILE_SIZE 16


enum states {
	idle,
	run,
	jump
}

#region SETTING VARIABLES
player_speed = 2;
gravity_aceleration = 0.25;
player_state = states.idle;
jump_speed = -5;
can_jump = false;

x_speed = 0;
y_speed = 0;

collision_tilemap = layer_tilemap_get_id("Collision");

dash_Speed = 10; 
dash_Duration = 10; 
dash_Cooldown = 200; 
dash_Timer = 0;
dash_Available = true;
#endregion
