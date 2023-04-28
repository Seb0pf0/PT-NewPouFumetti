if place_meeting(x, y, obj_player)
{
    with (obj_player)
    {
        if (key_up2 && global.pacifistchallenge == 0)
        {
            global.pacifistchallenge = 1
			fmod_event_one_shot_3d("event:/sfx/misc/switchstart", x, y);
			msg = "ON"
        }
        else if (key_up2 && global.pacifistchallenge == 1)
		{
            global.pacifistchallenge = 0
			fmod_event_one_shot_3d("event:/sfx/misc/switchend", x, y);
			msg = "OFF"
        }
	}
}
