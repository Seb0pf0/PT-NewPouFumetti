if (ds_list_find_index(global.saveroom, id) == -1)
{
	instance_create(x + random_range(-10, 10), y + random_range(-10, 10), obj_glassdebris);
	instance_create(x + random_range(-10, 10), y + random_range(-10, 10), obj_glassdebris);
	instance_create(x + random_range(-10, 10), y + random_range(-10, 10), obj_glassdebris);
	instance_create(x + random_range(-10, 10), y + random_range(-10, 10), obj_glassdebris);
	instance_create(x + random_range(-10, 10), y + random_range(-10, 10), obj_glassdebris);
	instance_create(x + random_range(-10, 10), y + random_range(-10, 10), obj_glassdebris);
	tile_layer_delete_at(1, x, y);
	
}
if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)
{
	if (room == tower_finalhallway)
		global.leveltosave = "exit";
	with (obj_baddie)
	{
		if (escape == 1)
		{
			visible = true;
			instance_create(x, y, obj_genericpoofeffect);
		}
	}
	fmod_event_instance_play(global.snd_johndead);
	
	var combototal = 10 + floor(global.combo * 0.5);
	global.collect += combototal;
	global.comboscore += combototal;
	global.combo += 1;
	global.enemykilled += 1;
	global.combotime = 60;
	global.fill = 4000;
	notification_push(notifs.hungrypillar_dead, [room]);
	
	switch room
	{
		case floor3_roomtreasure:
			var lay = layer_get_id("Backgrounds_1");
			layer_background_sprite(layer_background_get_id(lay), bg_factory3escape);
			global.fill = 1860;
			break;
		case floor5_roomtreasure:
			global.fill = 1740;
			break;
		case ruin_11:
			global.fill = 2040;
			break;
		case dungeon_10:
			global.fill = 2460;
			break;
		case badland_9:
			global.fill = 2556;
			break;
		case graveyard_6:
			global.fill = 2640;
			break;
	}
	instance_create_unique(0, 0, obj_hungrypillarflash);
	
	with (obj_tv)
		chunkmax = global.fill;
	with (obj_escapecollect)
	{
		gotowardsplayer = false;
		movespeed = 5;
		image_alpha = 1;
	}
	with (obj_escapecollectbig)
		image_alpha = 1;
	
	fmod_event_instance_play(global.snd_escaperumble);
	obj_camera.alarm[1] = 60;
	instance_create(x, y, obj_bangeffect);
	instance_create(x, y, obj_slapstar);
	instance_create(x, y, obj_slapstar);
	instance_create(x, y, obj_slapstar);
	instance_create(x, y, obj_baddiegibs);
	instance_create(x, y, obj_baddiegibs);
	instance_create(x, y, obj_baddiegibs);
	if (global.coop == 1)
	{
		obj_player1.x = x;
		obj_player2.x = x;
		obj_player1.y = y;
		obj_player2.y = y;
	}
	with (obj_camera)
	{
		shake_mag = 3;
		shake_mag_acc = 3 / room_speed;
	}
	instance_destroy();
	fmod_event_one_shot_3d("event:/sfx/enemies/kill", x, y);
	instance_create(x, y + 600, obj_itspizzatime);
	global.panic = true;
	}
	ds_list_add(global.saveroom, id);