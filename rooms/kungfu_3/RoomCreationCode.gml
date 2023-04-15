pal_swap_init_system(3)
global.roommessage = "INTO THE HIGHWAY"
if (global.panic)
{
	var lay = layer_get_id("Backgrounds_stillH1");
	layer_background_sprite(layer_background_get_id(lay), bg_kungfucitypanic);
}
