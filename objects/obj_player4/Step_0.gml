move = (-keyboard_check(vk_left) + keyboard_check(vk_right))



#region MOVIMENTAÇÃO

//colisão vertical
	
	player_vspeed = player_vspeed + Gravidade
	

if (tilemap_get_at_pixel(tiles, x, bbox_bottom + sign(player_vspeed))) or (tilemap_get_at_pixel(tiles, x + ((bbox_right - bbox_left) / 2), bbox_bottom))
{
    player_vspeed = 0
}

else
{
    y += sign(player_vspeed)    
}

if (tilemap_get_at_pixel(tiles, x, bbox_bottom + player_vspeed)) && keyboard_check_pressed(vk_space)
{
	player_vspeed += player_jspeed
}
y += player_vspeed

// colisão horizontal
	
	bbox_side = move > 0 ? bbox_right : bbox_left

if (move !=0) && (tilemap_get_at_pixel(tiles, bbox_side + sign(move), y+1) or tilemap_get_at_pixel(tiles, bbox_side + sign(move), y - 16)) or (tilemap_get_at_pixel(tiles, bbox_side + ((bbox_top - bbox_bottom) /2 - player_speed),y))
{	
	move = 0
}

else

{
	x+= sign(move); 			
}

x += move * player_speed

#endregion




// TO DO:
// CORRIGIR BUGS RELACIONADOS A COLISÃO VERTICAL E VELOCIDADE DE SALTO
// PULAR DE UM PRÉDIO APÓS AS 12H

 