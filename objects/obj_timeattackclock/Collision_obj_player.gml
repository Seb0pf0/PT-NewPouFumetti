if (global.timeattack == 0)
{
    obj_camera.alarm[6] = 60
    global.timeattack = 1
    sound_play_3d("event:/sfx/enemies/killingblow")
    instance_destroy()
    ds_list_add(global.baddieroom, id)
}
