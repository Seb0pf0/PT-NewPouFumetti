if (global.timeattack == 0)
{
    obj_timeattack.alarm[1] = 60
    global.timeattack = 1
    sound_play_3d(sfx_killingblow)
    instance_destroy()
    ds_list_add(global.baddieroom, id)
}
