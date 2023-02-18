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
//if room == entrance_1 || room == entrance_2 || room == entrance_3 || room == entrance_4 || room == entrance_5 || room == entrance_6 || room == entrance_7 || room == entrance_8 || room == entrance_9 {
//	if (global.collect >= 3500)
//	    global.entrance_rank = "s";
//	else if (global.collect > 2500)
//	    global.entrance_rank = "a";
//	else if (global.collect > 1500)
//	    global.entrance_rank = "b";
//	else if (global.collect > 500)
//	    global.entrance_rank = "c";
//	else
//	    global.entrance_rank = "d";
//}