pal_swap_init_system(shd_pal_swapper)
global.roommessage = "LIVING IN THE CITY"
if (global.panic)
{
	var lay = layer_get_id("Backgrounds_still1");
	layer_background_sprite(layer_background_get_id(lay), bg_kungfupanic);
}