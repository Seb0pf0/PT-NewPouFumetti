///@description dont bother changing this
//it dosent work, instead go to obj_camera alarm5
if (global.timeattack == 1 && stop == 0 && !instance_exists(obj_ghostcollectibles))
{
	global.taseconds +=1;
    global.totaltime +=1;
if (global.taseconds > 59)
	{
		global.taseconds = 0;
		global.taminutes += 1;
	}
}
alarm[1] = 60;
