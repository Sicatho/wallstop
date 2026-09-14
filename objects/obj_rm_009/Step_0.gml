if obj_controller.levs == 9 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_009_start_shd;
} else {
sprite_index = spr_rm_009_start;
}
} else if obj_controller.levs > 9 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_009_clr_shd;
} else {
sprite_index = spr_rm_009_clrd;
}
} else {
    sprite_index = spr_rm_009_lock;
}

