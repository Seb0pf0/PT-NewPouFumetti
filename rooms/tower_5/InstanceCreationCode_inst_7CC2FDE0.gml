targetRoom = tower_4;
sprite_index = spr_elevatordown4;
var _found = false;
ini_open_from_string(obj_savesystem.ini_str);
if (ini_read_string("Game", "finalrank", "none") != "none")
	_found = true;
ini_close();
if (_found)
	instance_destroy();