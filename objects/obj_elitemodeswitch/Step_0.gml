if place_meeting(x, y, obj_player)
{
    with (obj_player)
    {
        if (key_up2 && global.elitechallenge == 0)
        {
            global.elitechallenge = 1
        }
        else if (key_up2 && global.elitechallenge == 1)
            global.elitechallenge = 0
    }
}
