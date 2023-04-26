if sprite_exists(sprite_index)
	draw_self();
font = font_add_sprite_ext(spr_smallfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!.-1234567890:;?", 1, -2)
draw_set_font(font);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
if con > -1
	draw_text(x + random_range(-1, 1), bbox_top - 16, string(msg));
draw_set_valign(fa_top);