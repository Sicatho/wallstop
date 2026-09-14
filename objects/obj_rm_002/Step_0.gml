if obj_controller.levs == 2 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_002_start_shd;
} else {
sprite_index = spr_rm_002_start;
}
} else if obj_controller.levs > 2 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_002_clrd_shd;
} else {
sprite_index = spr_rm_002_clrd;
}
} else {
    sprite_index = spr_rm_002_lock;
}

