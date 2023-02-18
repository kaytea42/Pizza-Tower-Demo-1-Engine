if (global.collectsound < 5)
    global.collectsound += 1;
if ((drop == 1) && (disappear == 0))
{
    alarm[4] = 400;
    disappear = 1;
}
if ((balloon == 1) && (!place_meeting(x, y, obj_balloon)))
    drop = 1;
if place_meeting(x, (y + 1), obj_enemiesbumpable)
    hsp = 0;
if (cantcollect == 1)
{
    if (flicker == 0)
    {
        alarm[1] = 3;
        flicker = 1;
    }
}
else if (cantcollect == 0)
    image_alpha = 1;
if (drop == 1)
    scr_collideandmove();