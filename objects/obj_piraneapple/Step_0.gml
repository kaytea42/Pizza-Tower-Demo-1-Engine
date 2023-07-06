if (turning == 0)
    hsp = (image_xscale * movespeed);
else
    hsp = ((-image_xscale) * movespeed);
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed);
if (state != 92)
    depth = 0;
if (state != 89)
    thrown = 0;
if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && (y + 200) > obj_player.y)
    attack = 1;
if (attack == 1)
{
    if (y < obj_player.y && vsp <= 4)
        vsp += 0.5;
    if (y >= obj_player.y && vsp > -4)
        vsp -= 0.5;
    sprite_index = spr_piraneappleattack;
    if (movespeed < 8 && turning == 0)
        movespeed += 0.1;
    if (movespeed != 0 && turning == 1)
        movespeed -= 0.1;
}
if (movespeed == 0)
    turning = 0;
if (image_xscale != sign((obj_player.x - x)) && x != obj_player.x)
{
    image_xscale = sign((obj_player.x - x));
    turning = 1;
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