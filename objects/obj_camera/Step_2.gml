if (instance_exists(obj_player) && ((obj_player.state != 22) && (obj_player.state != 41))) {
    var target = obj_player;
    __view_set(0, 0, ((target.x - (__view_get(2, 0) / 2))));
    __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - __view_get(2, 0))));
    __view_set(1, 0, (target.y - (__view_get(3, 0) / 2)));
    __view_set(1, 0, clamp(__view_get(1, 0), 0, (room_height - __view_get(3, 0))));
    if (shake_mag != 0) {
        __view_set(0, 0, ((target.x - (__view_get(2, 0) / 2))));
        __view_set(0, 0, clamp(__view_get(0, 0), 0, (room_width - __view_get(2, 0))));
        __view_set(1, 0, ((target.y - (__view_get(3, 0) / 2)) + irandom_range((-shake_mag), shake_mag)));
        __view_set(1, 0, clamp(__view_get(1, 0), (0 + irandom_range((-shake_mag), shake_mag)), ((room_height - __view_get(3, 0)) + irandom_range((-shake_mag), shake_mag))));
    }
}