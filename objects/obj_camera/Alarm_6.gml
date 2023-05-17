if (global.timeattack == 1 && room != rank_room)
{
	global.taseconds +=1;
    global.totaltime +=1;
if (global.taseconds > 59)
	{
		global.taseconds = 0;
		global.taminutes += 1;
	}
}
alarm[6] = 60;