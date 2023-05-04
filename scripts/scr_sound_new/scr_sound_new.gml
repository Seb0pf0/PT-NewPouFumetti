/*function sound_pause_all(argument0) //gml_Script_sound_pause_all
{
    fmod_event_instance_set_paused_all(argument0)
}

function sound_stop(argument0, argument1) //gml_Script_sound_stop
{
    if (argument1 == undefined)
        argument1 = 1
    var sound = ds_map_find_value(obj_fmod.sound_cache, argument0)
    if (sound != undefined)
        fmod_event_instance_stop(sound, argument1)
}

function sound_is_playing(argument0) //gml_Script_sound_is_playing
{
    sound = ds_map_find_value(obj_fmod.sound_cache, argument0)
    if (sound != undefined)
        return fmod_event_instance_is_playing(sound);
}

function sound_stop_all(argument0) //gml_Script_sound_stop_all
{
    if (argument0 == undefined)
        argument0 = 1
    for (sound = ds_map_find_first(obj_fmod.sound_cache); sound != undefined; sound = ds_map_find_next(obj_fmod.sound_cache, sound))
        fmod_event_instance_stop(ds_map_find_value(obj_fmod.sound_cache, sound), argument0)
}

function sound_play(argument0) //gml_Script_sound_play
{
    sound_play_3d(argument0)
}

function sound_play_3d(argument0, argument1, argument2) //gml_Script_sound_play_3d
{
    if (argument1 == undefined)
        argument1 = undefined
    if (argument2 == undefined)
        argument2 = undefined
    sound = ds_map_find_value(obj_fmod.sound_cache, argument0)
    if (sound == undefined)
    {
        sound = fmod_event_create_instance(argument0)
        ds_map_add(obj_fmod.sound_cache, argument0, sound)
    }
    fmod_event_instance_set_paused(sound, 0)
    if (argument1 != undefined && argument2 != undefined)
        fmod_event_instance_set_3d_attributes(sound, argument1, argument2)
    fmod_event_instance_play(sound)
}

function sound_play_centered(argument0) //gml_Script_sound_play_centered
{
    sound_play_3d(argument0, (camera_get_view_x(view_camera[0]) + 480), (camera_get_view_y(view_camera[0]) + 270))
}

function sound_play_centered_oneshot(argument0) //gml_Script_sound_play_centered_oneshot
{
    fmod_event_one_shot_3d(argument0, (camera_get_view_x(view_camera[0]) + 480), (camera_get_view_y(view_camera[0]) + 270))
}

function sound_play_oneshot(argument0) //gml_Script_sound_play_oneshot
{
    fmod_event_one_shot(argument0)
}

function sound_play_multiple(argument0, argument1, argument2) //gml_Script_sound_play_multiple
{
    if (argument1 == undefined)
        argument1 = undefined
    if (argument2 == undefined)
        argument2 = undefined
    if (argument1 != undefined && argument2 != undefined)
        fmod_event_one_shot_3d(argument0, argument1, argument2)
    else
        fmod_event_one_shot(argument0)
}
