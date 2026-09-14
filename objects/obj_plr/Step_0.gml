/// @description states

mx = mouse_x;
my = mouse_y;

switch state {
case p_state.stop://///////////////////////////////////////////////////////////////////////////////////////////////////////
hspd = 0;
vspd = 0;

if !instance_exists(obj_pink) {
instance_create(x,y,obj_pink);
}

if mouse_check_button(mb_left) {
    if distance_to_point(mx, my) > 33 {
   if !instance_position(mx, my, obj_wall) {
    if ((mx - x < 16) && (mx - x > -16)) {
        if my < y {
            instance_create(x,my, obj_wall);
            state = p_state.up;
            }
            }
    }
}
}

if mouse_check_button(mb_left) {
if distance_to_point(mx, my) > 33 {
    if !instance_position(mx, my, obj_wall) {
    if ((mx - x < 16) && (mx - x > -16)) {
        if my > y {
            instance_create(x,my, obj_wall);
            state = p_state.down;
            }
            }
    }
}
}

if mouse_check_button(mb_left) {
if distance_to_point(mx, my) > 33 {
    if !instance_position(mx, my, obj_wall) {
    if ((my - y < 16) && (my - y > -16)) {
        if mx < x {
            instance_create(mx,y, obj_wall);
            state = p_state.left;
            }
            }
    }
}
}

if mouse_check_button(mb_left) {
if distance_to_point(mx, my) > 33 {
if !instance_position(mx, my, obj_wall) {
    if ((my - y < 16) && (my - y > -16)) {
        if mx > x {
            instance_create(mx,y, obj_wall);
            state = p_state.right;
    }
    }
    }
}
}

break;
case p_state.up://///////////////////////////////////////////////////////////////////
    vspd = -spd;
    if instance_exists(obj_pink) {
    with obj_pink instance_destroy();
    }
    if place_meeting(x,y-spd, obj_wall) {
        y -= distance_to_object(obj_wall)-1;
        while !place_meeting(x,y-1, obj_wall) {
        y--;
        }
        vspd = 0;
        state = p_state.stop;
    }

break;
case p_state.down://///////////////////////////////////////////////////////////////
vspd = spd;
if instance_exists(obj_pink) {
    with obj_pink instance_destroy();
    }
    if place_meeting(x,y + spd, obj_wall) {
    y += distance_to_object(obj_wall)-1;
    while !place_meeting(x,y+1, obj_wall) {
        y++;
        }
    vspd = 0;
        state = p_state.stop;
        
    }
break;

case p_state.left://///////////////////////////////////////////////////////////
hspd = -spd;
if instance_exists(obj_pink) {
    with obj_pink instance_destroy();
    }

    if place_meeting(x-spd,y, obj_wall) {
        x -= distance_to_object(obj_wall)-1;
        while !place_meeting(x-1,y, obj_wall) {
        x--;
        }
        hspd = 0;
        state = p_state.stop;
    }

break;

case p_state.right://////////////////////////////////////////////////////////////
hspd = spd;
if instance_exists(obj_pink) {
    with obj_pink instance_destroy();
    }

    if place_meeting(x+spd,y, obj_wall) {
        x += distance_to_object(obj_wall)-1;
        while !place_meeting(x+1,y, obj_wall) {
        x++;
        }
        hspd = 0;
        state = p_state.stop;
    }
break;
}
if place_meeting(x,y, obj_evil) {
room_restart();
}
if place_meeting(x,y,obj_portal) {
room_goto_next();
}

x += hspd;
y += vspd;

///(x,y)
// x -> spd pixels per frame
// x -> -spd pixels per frame
// y -> spd pixels per frame
// y -> -spd pixels per frame



