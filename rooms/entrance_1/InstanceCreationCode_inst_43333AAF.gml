function prompt_array() 
{
    with (obj_player)
    {
        if (((sprite_index == spr_Timesup && floor(image_index) == (image_number - 2)) || state == (0 << 0)) && place_meeting(x, y, obj_exitgate))
            return 1;
    }
    return 0;
}

visible = false
prompt_array[0] = tv_create_prompt("Welcome to John Gutter, your adventure begins here!", (0 << 0), spr_tv_idle, 2.5)