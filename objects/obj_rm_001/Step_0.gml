if obj_controller.levs == 1 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_01_start_shd;
} else {
sprite_index = spr_rm_01_start;
}
} else {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_01_clrd_shd;
} else {
sprite_index = spr_rm_01_clrd;
}
}

