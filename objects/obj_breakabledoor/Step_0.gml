if ((place_meeting((x + 5), y, obj_player) || place_meeting((x - 5), y, obj_player)) && obj_player.mach2 >= 35 && obj_player.attacking == 1)
{
    if (obj_player.machpunchAnim == 0)
    {
        obj_player.machpunchAnim = 1;
        obj_player.image_index = 0;
    }
    instance_destroy();
}
if place_meeting(x, y, obj_swordhitbox)
    instance_destroy();
if (place_meeting(x, (y - 15), obj_player) && obj_player.state == 60)
    instance_destroy();