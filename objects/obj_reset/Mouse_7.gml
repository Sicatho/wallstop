
obj_controller.levs = 1;
if file_exists("save.sav") { file_delete("save.sav"); }
ini_open("save.sav");
ini_write_real("save", "levs", obj_controller.levs);
ini_close();
sprite_index = spr_reset;

