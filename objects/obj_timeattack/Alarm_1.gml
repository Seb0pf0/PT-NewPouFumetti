if (global.timeattack == 1 && stop == 0 && !instance_exists(obj_ghostcollectibles)&& (string_copy(room_get_name(room), 1, 5) != "tower"))
{
	global.taseconds += 1;
global.totaltime ++
if (global.taseconds > 59)
	{
		global.taseconds = 0;
		global.taminutes += 1;
	}
}
alarm[1] = 60;
