window_width = 1280;
window_height = 720;

if (room == rm_menu) {
	x_center = window_get_width()/2 ;
	y_center = window_get_height()/2;
	
	
	menu(x_center, y_center, [
		["New Game", new_game],
		["Load Game", exit_game],
		["Options", exit_game],
		["Exit", exit_game],
	] );
}

window_set_size(window_width, window_height);
window_center();