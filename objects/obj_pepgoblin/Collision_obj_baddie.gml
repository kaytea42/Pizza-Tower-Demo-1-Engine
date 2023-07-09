if ((other.hsp != 0) && ((other.stun == 1) && (vsp == 0)))
{
    if (alarm[0] < 50)
        alarm[0] = (alarm[0] + 50);
    if (stun == 0)
        ministun = 1;
    hsp = (sign((x - other.x)) * 6);
    if (x != other.x)
        image_xscale = (- sign((x - other.x)));
    vsp = -4;
}