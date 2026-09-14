/// @description initialize states
enum p_state {
up,
down,
left,
right,
stop
}
levs = 1;
if file_exists("save.sav") {
    ini_open("save.sav");
    levs = ini_read_real("save", "levs", 1);
}

