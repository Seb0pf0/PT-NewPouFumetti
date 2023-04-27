if (instance_number(object_index) > 1)
{
    instance_destroy()
    return;
}
pausedmusic = 0
fadeoff = 0
global.music = 0
roomname = 741
arena = 0
global.mu = mu_mansion
music = -4
secretmusic = -4
musicID = -4
secretmusicID = -4
pillarmusicID = -4
secret = 0
secretend = 0
pillar_on_camera = 0
prevpillar_on_camera = 0
escapetheme = 5
lap2theme = 6
secretpos = 0
normalpos = 0
stopmusic = 0
specialstop = 0
room_arr = [[mansion_1, mu_mansion, mu_mansion, 1]]
with (obj_music)
{
    if (music != -4)
        fmod_event_instance_set_paused(music.event, 1)
}