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
	var _cam_x = camera_get_view_x(view_camera[0]);
	var _cam_y = camera_get_view_y(view_camera[0]);
	
	layer_x("normalT_parrallax2", (_cam_x * 0.125));
	layer_y("normalT_parrallax2", (_cam_y * 0.125));
	
	layer_x("normalT_parrallax2_3", (_cam_x * 0.25));
	layer_y("normalT_parrallax2_2", (_cam_y * 0.25));
	
	layer_x("normalT_parrallax2_3", (_cam_x * 0.50));
	layer_y("normalT_parrallax2_3", (_cam_y * 0.50));
	
	/*
    background_x[0] = (lerp(0, (room_width - background_width[0]), (view_xport[(0 << 0)] / (room_width - view_wport[(0 << 0)]))) / 6);
    background_y[0] = (lerp(0, (room_height - background_height[0]), (view_yport[(0 << 0)] / (room_height - view_hport[(0 << 0)]))) / 6);
    background_x[1] = (lerp(0, (room_width - background_width[0]), (view_xport[(0 << 0)] / (room_width - view_wport[(0 << 0)]))) / 8);
    background_y[1] = (lerp(0, (room_height - background_height[0]), (view_yport[(0 << 0)] / (room_height - view_hport[(0 << 0)]))) / 8);
    background_xscale[1] = 0.5;
    background_yscale[1] = 0.5;
    background_x[2] = (lerp(0, (room_width - background_width[0]), (view_xport[(0 << 0)] / (room_width - view_wport[(0 << 0)]))) / 10);
    background_y[2] = (lerp(0, (room_height - background_height[0]), (view_yport[(0 << 0)] / (room_height - view_hport[(0 << 0)]))) / 10);
    background_xscale[2] = 0.8;
    background_yscale[2] = 0.8;
    background_x[4] = (lerp(0, (room_width - background_width[0]), (view_xport[(0 << 0)] / (room_width - view_wport[(0 << 0)]))) / 16);
    background_y[4] = (lerp(0, (room_height - background_height[0]), (view_yport[(0 << 0)] / (room_height - view_hport[(0 << 0)]))) / 16);
    background_xscale[4] = 0.7;
    background_yscale[4] = 0.7;
    background_y[4] = 300;
	*/
}