var target;
if (global.panic == 1)
    timestop = 0;
else
    timestop = 1;
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