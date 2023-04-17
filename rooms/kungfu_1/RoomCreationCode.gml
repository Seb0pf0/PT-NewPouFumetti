pal_swap_init_system(shd_pal_swapper)
global.gameframe_caption_text = "Martial Arts in the Pizza Tower.";
global.roommessage = "PIZZA TOWER AT CHINATOWN"
if (!obj_secretmanager.init)
{
	trace("secret init");
	obj_secretmanager.init = true;
	secret_add(function()
	{
		touchedtriggers = 0;
	}, function()
	{
		if (touchedtriggers >= 4)
			secret_open_portal(0);
	});
	secret_add(-4, function()
	{
		secret_open_portal(1);
	});
	secret_add(-4, function()
	{
		if (secret_check_trigger(2))
			secret_open_portal(2);
	});
}
if (global.panic)
{
	var lay = layer_get_id("Backgrounds_still1");
	layer_background_sprite(layer_background_get_id(lay), bg_kungfupanic);
}