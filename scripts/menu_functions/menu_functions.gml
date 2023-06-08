
function menu(_x, _y, _options, _description = -1) {
	with (instance_create_depth(_x, _y, -999, obj_menu)) {
		options = _options;
		description = _description;
		options_count = array_length(_options);
		hovermarker= "* ";
		
		margin = 8;
		draw_set_font(ft_menu);
		
		width = 1;
		if (_description != -1) width = max(width, string_width(_description));
		for (var index = 0; index < options_count; index++) {
			width = max(width, string_width(_options[index][0]));
		}
		width += string_width(hovermarker);
		
		height_line = 17;
		height = height_line * (options_count + !(description == -1));
		
		width_full = width + margin * 2;
		height_full = height + margin * 2;
	}
}

function new_game() {
	room_goto(rm_main);
}

function exit_game() {
	game_end();
}