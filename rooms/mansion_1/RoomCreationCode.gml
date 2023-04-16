pal_swap_init_system(3)
global.roommessage = "ROAD TO THE MANSION"
global.door_sprite = spr_door;
global.door_index = 3;
global.gameframe_caption_text = "The spooky mansion of the Pizza Tower.";
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
