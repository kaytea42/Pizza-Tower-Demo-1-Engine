var target;
if (global.panic == 1)
    timestop = 0;
else
    timestop = 1;
if (room == AT_room17 || room == AT_room8 || room == AT_room15 || room == AT_room6)
{
	/*
    background_x[0] = (lerp(0, (room_width - background_width[0]), (view_xview[(0 << 0)] / (room_width - view_wview[(0 << 0)]))) / 6);
    background_y[0] = (lerp(0, (room_height - background_height[0]), (view_yview[(0 << 0)] / (room_height - view_hview[(0 << 0)]))) / 6);
    background_x[1] = (lerp(0, (room_width - background_width[0]), (view_xview[(0 << 0)] / (room_width - view_wview[(0 << 0)]))) / 8);
    background_y[1] = (lerp(0, (room_height - background_height[0]), (view_yview[(0 << 0)] / (room_height - view_hview[(0 << 0)]))) / 8);
    background_xscale[1] = 0.5;
    background_yscale[1] = 0.5;
    background_x[2] = (lerp(0, (room_width - background_width[0]), (view_xview[(0 << 0)] / (room_width - view_wview[(0 << 0)]))) / 10);
    background_y[2] = (lerp(0, (room_height - background_height[0]), (view_yview[(0 << 0)] / (room_height - view_hview[(0 << 0)]))) / 10);
    background_xscale[2] = 0.8;
    background_yscale[2] = 0.8;
    background_x[4] = (lerp(0, (room_width - background_width[0]), (view_xview[(0 << 0)] / (room_width - view_wview[(0 << 0)]))) / 16);
    background_y[4] = (lerp(0, (room_height - background_height[0]), (view_yview[(0 << 0)] / (room_height - view_hview[(0 << 0)]))) / 16);
    background_xscale[4] = 0.7;
    background_yscale[4] = 0.7;
    background_y[4] = 300;
	*/
}
if (room == timesuproom)
    timestop = 1;
if instance_exists(obj_player) && ((global.seconds == 0) && ((global.minutes == 0) && ((room != timesuproom) && (!instance_exists(obj_endlevelfade)))))
{
    obj_player.state = 22;
    room = timesuproom;
    obj_player.image_index = 0;
}
if (global.seconds < 0)
{
    global.seconds = 59;
    global.minutes -= 1;
}
if (global.seconds > 59)
{
    global.minutes += 1;
    global.seconds -= 59;
}
if ((global.panic == 1) && (global.minutes < 1))
{
    shake_mag = 3;
    shake_mag_acc = (4 / room_speed);
}
else if (global.panic == 1)
{
    shake_mag = 5;
    shake_mag_acc = (6 / room_speed);
}
if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc;
    if (shake_mag < 0)
        shake_mag = 0;
}