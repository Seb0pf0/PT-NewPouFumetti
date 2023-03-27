depth = 10
state = states.normal;
hub_array[0] = [tower_1, "FLOOR 1"];
hub_array[1] = [tower_2, "FLOOR 2"];
hub_array[2] = [tower_e1, "FLOOR EX1"];
hub_array[3] = [tower_3, "FLOOR 3"];
hub_array[4] = [tower_e2, "FLOOR EX2"];
hub_array[5] = [tower_4, "FLOOR 4"];
hub_array[6] = [tower_e3, "FLOOR EX3"];
hub_array[7] = [tower_5, "FLOOR 5"];
hub_array[8] = [tower_soc, "CHAMPION"];
hub_array[9] = [rm_levelselect, "SELECT ZONE"]
isgustavo = false;
playerid = -4;
selected = 0;
switch (room)
{
	case tower_1:
		selected = 0;
		break;
	case tower_2:
		selected = 1;
		break;
		case tower_e1:
		selected = 2;
		break;
	case tower_3:
		selected = 3;
		break;
			case tower_e2:
		selected = 4;
		break;
	case tower_4:
		selected = 5;
		break;
		case tower_e3:
		selected = 6;
		break;
		case tower_5:
		selected = 7;
		break;
		case tower_soc:
		selected = 8;
		break;
}
if (global.panic)
instance_destroy()