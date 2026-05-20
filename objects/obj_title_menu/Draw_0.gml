draw_self();

draw_set_font(main_font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < op_length; i++){

	draw_text(x + op_border, y + op_border + op_space * i, option[i]);

}