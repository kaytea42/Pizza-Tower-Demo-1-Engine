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
if (room == AT_room17 || room == AT_room8 || room == AT_room15 || room == AT_room6)
{
	__background_set( e__BG.X, 0, (lerp(0, (room_width - __background_get( e__BG.Width, 0 )), (__view_get( e__VW.XView, 0 ) / (room_width - __view_get( e__VW.WView, 0 )))) / 6) );
    __background_set( e__BG.Y, 0, (lerp(0, (room_height - __background_get( e__BG.Height, 0 )), (__view_get( e__VW.YView, 0 ) / (room_height - __view_get( e__VW.HView, 0 )))) / 6) );
    __background_set( e__BG.X, 1, (lerp(0, (room_width - __background_get( e__BG.Width, 0 )), (__view_get( e__VW.XView, 0 ) / (room_width - __view_get( e__VW.WView, 0 )))) / 8) );
    __background_set( e__BG.Y, 1, (lerp(0, (room_height - __background_get( e__BG.Height, 0 )), (__view_get( e__VW.YView, 0 ) / (room_height - __view_get( e__VW.HView, 0 )))) / 8) );
    __background_set( e__BG.XScale, 1, 0.5 );
    __background_set( e__BG.YScale, 1, 0.5 );
    __background_set( e__BG.X, 2, (lerp(0, (room_width - __background_get( e__BG.Width, 0 )), (__view_get( e__VW.XView, 0 ) / (room_width - __view_get( e__VW.WView, 0 )))) / 10) );
    __background_set( e__BG.Y, 2, (lerp(0, (room_height - __background_get( e__BG.Height, 0 )), (__view_get( e__VW.YView, 0 ) / (room_height - __view_get( e__VW.HView, 0 )))) / 10) );
    __background_set( e__BG.XScale, 2, 0.8 );
    __background_set( e__BG.YScale, 2, 0.8 );
    __background_set( e__BG.X, 4, (lerp(0, (room_width - __background_get( e__BG.Width, 0 )), (__view_get( e__VW.XView, 0 ) / (room_width - __view_get( e__VW.WView, 0 )))) / 16) );
    __background_set( e__BG.Y, 4, (lerp(0, (room_height - __background_get( e__BG.Height, 0 )), (__view_get( e__VW.YView, 0 ) / (room_height - __view_get( e__VW.HView, 0 )))) / 16) );
    __background_set( e__BG.XScale, 4, 0.7 );
    __background_set( e__BG.YScale, 4, 0.7 );
    __background_set( e__BG.Y, 4, 300 );
}