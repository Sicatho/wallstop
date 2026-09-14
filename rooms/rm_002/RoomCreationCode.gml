if obj_controller.levs < 2 {
obj_controller.levs = 2;
room_goto(rm_level_select);
}
if file_exists("save.sav") { file_delete("save.sav"); }
ini_open("save.sav");
ini_write_real("save", "levs", obj_controller.levs);
ini_close();