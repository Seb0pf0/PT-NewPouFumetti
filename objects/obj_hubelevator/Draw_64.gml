if (state == states.titlescreen)
{
	draw_set_font(lang_get_font("bigfont"))
	var w = 0;
	var h = 0;
	var pad = 16;
	var yy = 0;
	for (var i = 0; i < array_length(hub_array); i++)
	{
		var txt = hub_array[i][1];
		if (string_width(txt) > w)
			w = string_width(txt);
		h += string_height(txt);
	}
	w += pad;
	h += pad;
	yy = (SCREEN_HEIGHT / 2) + (h / 2);
    draw_set_colour(c_black)
    draw_set_alpha(0.5)
    draw_roundrect((SCREEN_WIDTH / 2) - (w / 2), (SCREEN_HEIGHT / 2) - (h / 2), (SCREEN_WIDTH / 2) + (w / 2), yy,false);
	yy -= (pad / 2);
	draw_set_valign(2);
	draw_set_halign(1);
	for (i = 0; i < array_length(hub_array); i++)
	{
		var c = (selected == i) ? c_white : c_gray;
		txt = hub_array[i][1];
		draw_text_color(480, yy, txt, c, c, c, c, 1);
		yy -= string_height(txt);
	}
}
