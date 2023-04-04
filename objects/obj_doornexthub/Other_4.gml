ini_open_from_string(obj_savesystem.ini_str);
unlocked = ini_read_real(save, "door", false);
key = ini_read_real(save, "bosskey", false);
if (key && !unlocked)
	instance_create(obj_player1.x, obj_player1.y, obj_giantkeyfollow);
ini_close();
if (unlocked)
	sprite_index = spr_elevatoropen;
if (unlocked || key)
	scr_create_uparrowhitbox();
if (global.panic)
{
	instance_create(x + 50, y + 96, obj_rubble);
	instance_destroy();
}
var _found = false;
ini_open_from_string(obj_savesystem.ini_str);
if (ini_read_string("Game", "finalrank", "none") != "none")
	_found = false;
ini_close();
if (_found)
	instance_destroy();
