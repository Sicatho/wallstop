if obj_controller.levs == 4 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_004_start_shd;
} else {
sprite_index = spr_rm_004_start;
}
} else if obj_controller.levs > 4 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_004_clr_shd;
} else {
sprite_index = spr_rm_004_clrd;
}
} else {
    sprite_index = spr_rm_004_lock;
}

