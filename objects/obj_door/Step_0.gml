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
