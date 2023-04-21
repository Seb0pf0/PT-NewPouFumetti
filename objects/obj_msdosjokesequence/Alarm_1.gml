file = file_text_open_write("mario_information");
file_text_write_string(file, "Mariror unlock = yes");
file_text_close(file);

ds_list_clear(commandlines);

alarm[3] = 30; // game end

