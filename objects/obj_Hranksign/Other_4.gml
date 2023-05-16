ini_open_from_string(obj_savesystem.ini_str);
rank = ini_read_string("TimeRanks", string(level), "none");
ini_close();
