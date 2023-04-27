room_arr = [[570, 0, 2, 1]]
var theroomname = room_get_name(room)
if (string_pos("tower", theroomname) != 0)
{
    instance_destroy()
    return;
}
if (string_pos("secret", theroomname) != 0)
{
    with (obj_music)
    {
        if (music != -4)
            fmod_event_instance_set_paused(music.event_secret, 1)
    }
    secret = 1
}
else if (secret == 1)
{
    secret = 0
    secretend = 1
}
if (!global.panic)
{
    var i = 0
    while (i < array_length(room_arr))
    {
        var b = room_arr[i]
        if (room == b[0])
        {
            if (!specialstop)
            {
                if audio_is_paused(musicID)
                    audio_resume_sound(musicID)
            }
            var prevmusic = music
            music = b[1]
            secretmusic = b[2]
            if (music != prevmusic && (!specialstop))
            {
                var prevmuID = musicID
                musicID = scr_music(music)
                if b[3]
                    audio_sound_set_track_position(musicID, audio_sound_get_track_position(prevmuID))
                audio_stop_sound(prevmuID)
            }
            audio_stop_sound(secretmusicID)
            audio_stop_sound(pillarmusicID)
            secretmusicID = -4
            if (room == war_1)
                audio_stop_sound(musicID)
            break
        }
        else
        {
            i++
            continue
        }
    }
}
if secret
{
    stopmusic = 0
    normalpos = audio_sound_get_track_position(musicID)
    audio_pause_sound(musicID)
    if ((!audio_is_paused(secretmusicID)) && (!audio_is_playing(secretmusicID)))
        secretmusicID = scr_music(secretmusic)
    else
        audio_resume_sound(secretmusicID)
    audio_sound_set_track_position(secretmusicID, secretpos)
}
else if secretend
{
    if (stopmusic == 0 && specialstop)
        stopmusic = 1
    secretpos = audio_sound_get_track_position(secretmusicID)
    audio_pause_sound(secretmusicID)
    if ((!audio_is_paused(musicID)) && (!audio_is_playing(musicID)))
        musicID = scr_music(music)
    else
        audio_resume_sound(musicID)
    audio_sound_set_track_position(musicID, normalpos)
    secretend = 0
}
if (room == rank_room)
{
    audio_stop_sound(musicID)
    audio_stop_sound(secretmusicID)
    audio_stop_sound(pillarmusicID)
    musicID = -4
    secretmusicID = -4
    pillarmusicID = -4
}