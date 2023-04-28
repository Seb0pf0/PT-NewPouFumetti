if place_meeting(x, y, obj_player)
{
    with (obj_player)
    {
        if (key_up2 && global.veganchallenge == 0)
        {
            global.veganchallenge = 1
        }
        else if (key_up2 && global.veganchallenge == 1)
            global.veganchallenge = 0
    }
}
