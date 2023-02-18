if (vsp < 12)
    vsp = (vsp + grav);
image_speed = 0;
if place_meeting((x + floor(hsp)), y, obj_null)
{
    x = floor(x);
    while (! place_meeting((x + sign(hsp)), y, obj_null))
        x = (x + sign(hsp));
    hsp = 0;
}
x = (x + hsp);
if place_meeting(x, (y + floor(vsp)), obj_null)
{
    y = floor(y);
    while (! place_meeting(x, (y + sign(vsp)), obj_null))
        y = (y + sign(vsp));
    vsp = 0;
}
y = (y + floor(vsp));