var num = 4;
if obj_controller.levs < num {
obj_controller.levs = num;
room_goto(rm_level_select);
}
if file_exists("save.sav") { file_delete("save.sav"); }
ini_open("save.sav");
ini_write_real("save", "levs", obj_controller.levs);
ini_close();