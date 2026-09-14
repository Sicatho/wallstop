if obj_controller.levs == 7 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_007_start_shd;
} else {
sprite_index = spr_rm_007_start;
}
} else if obj_controller.levs > 7 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_007_clr_shd;
} else {
sprite_index = spr_rm_007_clrd;
}
} else {
    sprite_index = spr_rm_007_lock;
}

