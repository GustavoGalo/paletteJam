/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_sprite_stretched(sprt_frame, 0, x - margin, y - margin, width_full, height_full);

draw_set_color(c_white);
draw_set_font(ft_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc = !(description == -1);
for (l = 0; l < (options_count + _desc); l++) {
	draw_set_color(c_white);
	if (l == 0 && _desc) 
		draw_text(x, y, description);
	else {
		var _str = options[l - _desc][0];
		if (hover == l - _desc) {
			draw_set_color(c_yellow);
			_str = hovermarker + _str;
		}
		draw_text(x, y + l * height_line, _str);
	}
}