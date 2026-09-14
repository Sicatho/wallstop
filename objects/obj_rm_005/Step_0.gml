if obj_controller.levs == 5 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_005_start_shd;
} else {
sprite_index = spr_rm_005_start;
}
} else if obj_controller.levs > 5 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_005_clr_shd;
} else {
sprite_index = spr_rm_005_clrd;
}
} else {
    sprite_index = spr_rm_005_lock;
}

