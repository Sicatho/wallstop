if obj_controller.levs == 8 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_008_start_shd;
} else {
sprite_index = spr_rm_008_start;
}
} else if obj_controller.levs > 8 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_008_clr_shd;
} else {
sprite_index = spr_rm_008_clrd;
}
} else {
    sprite_index = spr_rm_008_lock;
}

