
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
player_speed = 2.5;
layer_tiles = layer_get_id("tiles")
tiles = layer_tilemap_get_id(layer_tiles);
player_vspeed = 0
player_jspeed = -5
Gravidade =0.5
Pulos = 2

// CORRIGIR BUGS RELACIONADOS A COLISÃO VERTICAL E VELOCIDADE DE SALTO

death_area_tiles = layer_tilemap_get_id("death_area");