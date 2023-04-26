event_inherited();
switch (state)
{
	case states.jump:
		if (vsp < 20)
			vsp += grav;
		y += vsp;
		if (y > ystart && vsp > 0)
		{
			y = ystart;
			state = states.normal;
		}
		break;
}
if room = tower_1
msg = "Pepperman"
else if room = tower_2
msg = "Vigilante"
else if room = tower_3
msg = "The Noise"
else if room = tower_e1
msg = "Millenial Guardian"
else if room = tower_e2
msg = "Felia"
else if room = tower_4
msg = "Peppino?"
else if room = tower_e3
msg = "The Witch"
else if room = tower_soc
msg = "Champion Road"