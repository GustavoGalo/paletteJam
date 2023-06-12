#region VARIAVEIS
player_speed = 2.5;
layer_tiles = layer_get_id("tiles");
tiles = layer_tilemap_get_id(layer_tiles);
player_vspeed = 0;
player_jspeed = -25;
Gravidade = 0.5;
Pulos = 2;
lifes = 5;
fname_checkpoint = "checkpoint.ini";

#endregion

#region CHECKPOINTS
function load_checkpoint() {
	if (file_exists(fname_checkpoint)) {
	    ini_open("checkpoint.ini");
	    x = ini_read_real("player", "x", x);
	    y = ini_read_real("player", "y", y);
	    ini_close();
	}
}

function checkpoint() {
	ini_open(fname_checkpoint);
	ini_write_real("player", "x", obj_player4.x);
	ini_write_real("player", "y", obj_player4.y);
	ini_close();
}

// function reset_checkpoint() {
	
//}
#endregion

#region STATE MACHINE - DASH



#endregion