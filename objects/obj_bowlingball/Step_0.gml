if (obj_player.x > (x - 8) && obj_player.x < (x + 8) && obj_player.y > y && obj_player.y < (y + 200) && falling == 0)
{
    vsp = 15;
    falling = 1;
}
if (falling == 1)
{
    sprite_index = spr_bowlingballfalling;
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
    if (vsp < 30)
        vsp += grav;
}