pal_swap_init_system(shd_pal_swapper);
global.roommessage = "QUICK! THE EXIT IS OVER THERE!"
if (global.panic)
{
	var lay = layer_get_id("Backgrounds_scroll")
	layer_background_sprite(layer_background_get_id(lay), bg_factory2escape)

}