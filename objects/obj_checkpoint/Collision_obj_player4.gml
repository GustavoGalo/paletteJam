/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

sprite_index = sprt_firepit;

ini_open("checkpoint.ini");
ini_write_real("player", "x", obj_player4.x);
ini_write_real("player", "y", obj_player4.y);
ini_close();