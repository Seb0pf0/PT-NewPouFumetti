/// @description Capture async events from NekoPresence.

var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
	global.discord_initialized = true;
	
	window_set_caption("PizzaTower NPF+");
	ready = true;
	show_debug_message("date: " + string(date_current_datetime()));
	np_setpresence_timestamps(date_current_datetime(), 0, false);
	np_setpresence_more("Test for small image, change soon", "Playing PT NPF+", false);
	
	// bruh
	//np_setpresence_buttons(0, "Test Button", "https://youtube.com/euna_.");
	// np_setpresence_buttons(1, "test2", "https://twitter.com/@seb0pf0");
	// DISCORD_MAX_BUTTONS == 2, so only allowed IDs are 0 and 1.
	
	//np_setpresence() should ALWAYS come the last!!
var logo_set = "large_image"
np_setpresence ("Main Menu",global.roommessage, "large_image", "");
	
	// passing a URL will add this sprite asynchronously via *internets*
	sprite_add(np_get_avatar_url(async_load[? "user_id"], async_load[? "avatar"]), 1, false, false, 0, 0);
}