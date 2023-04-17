
if (state == (0 << 0))
{
    state = (144 << 0)
    cutscene_count = 80
	fmod_event_one_shot("event:/sfx/misc/foundtreasure");
	global.combotime = 60
    global.kungfu = 1
	global.attackstyle = 1
    global.hp = 8
    x = other.x
    y = (other.y - 35)
    with (obj_arenagate)
    {
        sprite_index = spr_arenagate_close
        image_index = 0
        block_inst = instance_create(x, y, obj_solid)
        with (block_inst)
        {
            sprite_index = spr_arenagate_open
            image_xscale = other.image_xscale
            image_yscale = other.image_yscale
        }
    }
}
