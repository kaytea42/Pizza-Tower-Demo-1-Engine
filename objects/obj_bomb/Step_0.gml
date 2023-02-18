countdown -= 0.5;
if place_meeting((x + hsp), y, obj_collisionparent)
{
    hsp = (-hsp);
    vsp = -3;
    drop = 1;
}
if (place_meeting(x, (y + 1), obj_collisionparent) && drop == 1)
    hsp = 0;
if (drop == 1)
{
    if (vsp < 12)
        vsp += grav;
}
if (countdown < 50)
    sprite_index = spr_bomblit;
if (countdown == 0)
{
    instance_destroy();
    instance_create(x, y, obj_bombexplosion);
}
if place_meeting((x + floor(hsp)), y, obj_null)
{
    x = floor(x);
    while (!(place_meeting((x + sign(hsp)), y, obj_null)))
        x += sign(hsp);
    hsp = 0;
}
x += hsp;
if place_meeting(x, (y + floor(vsp)), obj_null)
{
    y = floor(y);
    while (!(place_meeting(x, (y + sign(vsp)), obj_null)))
        y += sign(vsp);
    vsp = 0;
}
y += floor(vsp);