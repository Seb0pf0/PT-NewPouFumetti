pal_swap_init_system(shd_pal_swapper);
global.roommessage = "STINK OF MACHINES";
with (obj_secretbigblock)
	particlespr = spr_factorydebris;
if (!obj_secretmanager.init)
{
	obj_secretmanager.init = true;
	secret_add(-4, function()
	{
		secret_open_portal(0);
	});
	secret_add(-4, function()
	{
		secret_open_portal(1);
	});
}
if (global.panic)
{
	var lay = layer_get_id("Backgrounds_1")
	layer_background_sprite(layer_background_get_id(lay), bg_factory3escape)

}