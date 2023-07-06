if (vsp < 30)
    vsp += grav;
if (hsp == 0)
    image_speed = 0;
else
    image_speed = 0.35;
if (place_meeting((x + 1), y, obj_collisionparent) || place_meeting((x - 1), y, obj_collisionparent))
{
    instance_destroy();
    instance_create(x, (y + 10), obj_skateboarddebris1);
    instance_create(x, (y + 10), obj_skateboarddebris2);
}
scr_collideandmove();