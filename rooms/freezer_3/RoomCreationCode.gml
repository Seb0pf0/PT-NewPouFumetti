pal_swap_init_system(shd_pal_swapper);
global.roommessage = "SNOWSTORM";
if (global.panic)
{
	var lay = layer_get_id("Assets_2");
	layer_set_visible(lay, false);
}
