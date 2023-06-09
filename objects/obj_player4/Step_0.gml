 // Movimentação Horizontal
move = (-keyboard_check(vk_left) + keyboard_check(vk_right))


if move!= 0
{
	image_xscale = sign(move)	
	
} 

/*  //Colisão horizontal

bbox_side = move > 0 ? bbox_right : bbox_left

if (move !=0) && (tilemap_get_at_pixel(tiles, bbox_side + sign(move), y) or tilemap_get_at_pixel(tiles, bbox_side + sign(move), y - 16))
{
	move = 0
	
}

else

{
	x+= sign(move); 			
}
*/

if (place_meeting(x + player_speed, y, obj_colisor_teste)) {
    while (!place_meeting(x + sign(player_speed), y, obj_colisor_teste)) {
      x += sign(player_speed);
    }
   player_speed = 0;
}
x += move * player_speed;

/*  // Colisão Vertical

player_vspeed = player_vspeed + Gravidade

if tilemap_get_at_pixel(tiles, x, bbox_bottom + sign(player_vspeed))
{
	player_vspeed = 0
}

else
{
	y += sign(player_vspeed)	
}

if (tilemap_get_at_pixel(tiles, x, bbox_bottom + sign(player_vspeed)) and (keyboard_check(vk_space)))
{
	player_vspeed = player_jspeed
}

*/

y += player_vspeed



// CORRIGIR BUGS RELACIONADOS A COLISÃO VERTICAL E VELOCIDADE DE SALTO