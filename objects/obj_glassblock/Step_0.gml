if (place_meeting((x + 1), y, obj_player) && obj_player.xscale == -1 && obj_player.mach2 >= 35 && obj_player.attacking == 1)
{
    if (obj_player.machpunchAnim == 0)
    {
        with (obj_player)
        {
            if place_meeting(x, (y + 1), obj_collisionparent)
            {
                machpunchAnim = 1;
                image_index = 0;
            }
        }
    }
    instance_destroy();;
}
if (place_meeting((x - 1), y, obj_player) && obj_player.xscale == 1 && obj_player.mach2 >= 35 && obj_player.attacking == 1)
{
    if (obj_player.machpunchAnim == 0)
    {
        with (obj_player)
        {
            if place_meeting(x, (y + 1), obj_collisionparent)
            {
                machpunchAnim = 1;
                image_index = 0;
            }
        }
    }
    instance_destroy();
}
if (place_meeting(x, (y - 1), obj_player) && obj_player.vsp > 0 && obj_player.state == 20)
{
    instance_destroy();
    obj_player.image_index = 0;
    obj_player.vsp = -7;
    obj_player.facestompAnim = 1;
}
if (place_meeting(x, (y - 1), obj_player) && obj_player.vsp > 0 && (obj_player.state == 60 || obj_player.state == 29 || obj_player.state == 28 || obj_player.state == 10))
    instance_destroy();
if (place_meeting(x, (y + 1), obj_player) && obj_player.state == 49)
    instance_destroy();
if place_meeting(x, (y + 1), obj_player)
{
    with (obj_player)
    {
        if (key_jump && state == 52)
        {
            instance_destroy(other.id);
            vsp = 0;
            jumpstop = 1;
        }
    }
}
if (place_meeting(x, (y + 1), obj_player) && obj_player.vsp <= 0.5)
{
    with (obj_player)
    {
        if (!(place_meeting(x, (y + 1), obj_collisionparent)))
        {
            instance_destroy(other.id);
            vsp = 0;
            jumpstop = 1;
        }
    }
}
