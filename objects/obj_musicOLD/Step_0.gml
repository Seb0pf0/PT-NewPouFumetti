/*prevpillar_on_camera = pillar_on_camera
if instance_exists(obj_hungrypillar)
{
    var p = 0
    with (obj_hungrypillar)
    {
        if bbox_in_camera(view_camera[0], 0)
            p = 1
    }
    if (p != pillar_on_camera)
        pillar_on_camera = p
}
else
    pillar_on_camera = 0
if (prevpillar_on_camera != pillar_on_camera)
{
    if pillar_on_camera
        audio_sound_gain(musicID, 0, 2000)
    else
        audio_sound_gain(musicID, (0.6 * global.option_music_volume), 2000)
}
if global.panic
{
    if audio_is_playing(musicID)
    {
        audio_stop_sound(musicID)
        pillarmusicID = -4
    }
}
if stopmusic
{
    if (!audio_is_paused(musicID))
        audio_pause_sound(musicID)
    if (!audio_is_paused(secretmusicID))
        audio_pause_sound(secretmusicID)
}
else if (stopmusic == 0 && (!obj_pause.pause))
{
    if (!specialstop)
    {
        with (obj_music)
        {
            if (music != -4)
                fmod_event_instance_set_paused(music.event, 1)
        }
    }
    if secret
    {
        if audio_is_paused(secretmusicID)
            audio_resume_sound(secretmusicID)
    }
    else if (audio_is_paused(musicID) && (!specialstop))
        audio_resume_sound(musicID)
}
