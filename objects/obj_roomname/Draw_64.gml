if (room == Mainmenu || room == tower_soundtest || room = rm_jokestealer)
	exit;
	var _xx  = 195
    draw_set_font(lang_get_font("smallfont"));
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_color(c_white)
	draw_sprite(spr_roomnamebg,0, _xx, yi)
	if string_width(string_upper(msg)) <= maxwidth
		draw_text(_xx, yi, string_upper(msg))
	else
		draw_text_ext(_xx, yi - 6, string_upper(msg),-1,maxwidth)
//draw_sprite(spr_roomnamebg, 0, xi, yi);
//draw_text(xi, yi, msg);
if (showtext == true) yi = Approach(yi, 500, 5);
else yi = Approach(yi, 600, 1);	