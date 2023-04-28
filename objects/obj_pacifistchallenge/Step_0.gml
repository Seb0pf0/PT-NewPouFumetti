if place_meeting(x, y, obj_player)
{
    with (obj_player)
    {
        if (key_up2 && global.pacifistchallenge == 0)
        {
            global.pacifistchallenge = 1
        }
        else if (key_up2 && global.pacifistchallenge == 1)
            global.pacifistchallenge = 0
    }
}
