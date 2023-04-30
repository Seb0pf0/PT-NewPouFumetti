/// @description Updates the Score and room name

var r = string_letters(room_get_name(room));
if (r != "towertutorial" && string_copy(r, 1, 5) == "tower")
{
var logo_set = "large_image"
np_setpresence ("Lobby",global.roommessage, "large_image", "");
np_update();
}
else if (r = "jokestealer")
{
var logo_set = "large_image"
np_setpresence ("AloeXploit" ,"AloeXploit", "large_image", "");
np_update();
}
else
{
var logo_set = "large_image"
np_setpresence (concat("Score ", global.collect),global.roommessage, "large_image", "");
np_update();
}

