if obj_controller.levs == 6 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_006_start_shd;
} else {
sprite_index = spr_rm_006_start;
}
} else if obj_controller.levs > 6 {
if position_meeting(mouse_x, mouse_y, self) {
    sprite_index = spr_rm_006_clr_shd;
} else {
sprite_index = spr_rm_006_clrd;
}
} else {
    sprite_index = spr_rm_006_lock;
}

