if (ds_list_find_index(global.saveroom, id) == -1)
{
	with (obj_rpc)
{
var logo_set = "large_image"
np_setpresence (concat("Score ", global.collect),global.roommessage, "large_image", "");
np_update();
}
	ds_list_add(global.saveroom, id);
	if (object_index == obj_escapecollectbig)
		ds_list_add(global.escaperoom, id);
}
if (visible)
	scr_ghostcollectible();
