pal_swap_init_system(shd_pal_swapper);
global.roommessage = "Pizza Time Travel";
global.gameframe_caption_text = "Time Traveling in the Pizza Tower";
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
