pal_swap_init_system(shd_pal_swapper);
global.roommessage = "PIZZA TOWER NOW WITH MASS PRODUCTION";
global.gameframe_caption_text = "Mass-produced Pizza Tower";
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
