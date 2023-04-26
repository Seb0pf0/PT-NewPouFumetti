if (john && global.panic)
{
	if (room == saloon_4)
		sprite_index = spr_doorblockedsaloon;
	else
		sprite_index = spr_doorblocked;
	if (uparrowID != -4)
	{
		instance_destroy(uparrowID);
		uparrowID = -4;
	}
}
if ((room == tower_top && targetRoom == tower_pizzafacehall) || room == tower_pizzafacehall)
	sprite_index = spr_pizzafacedoor;
	if (room = tower_soc && targetRoom = tower_champlobby)
	{
	sprite_index = spr_door
	image_index = 2
}