/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();
draw_set_colour(c_purple);
var bbt = bbox_top;
var bbb = bbox_bottom;
var bbl = bbox_left;
var bbr = bbox_right;


draw_line(bbl, bbt, bbr, bbt);
draw_line(bbl, bbb, bbr, bbb);
draw_line(bbl, bbt, bbl, bbb);
draw_line(bbr, bbt, bbr, bbb);