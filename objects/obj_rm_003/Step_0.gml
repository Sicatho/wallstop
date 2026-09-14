if obj_controller.levs == 3 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_003_start_shd;
} else {
sprite_index = spr_rm_003_start;
}
} else if obj_controller.levs > 3 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_003_clrd_shd;
} else {
sprite_index = spr_rm_003_clrd;
}
} else {
    sprite_index = spr_rm_003_lock;
}

