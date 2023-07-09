if (place_meeting(x, (y - 1), obj_player) && (!place_meeting(x, y, obj_player)))
{
    with (obj_player)
    {
        if ((mach2 >= 35) && (vsp > 0))
        {
            vsp = 0;
            state = 31;
        }
    }
}