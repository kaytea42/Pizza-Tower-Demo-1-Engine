with (obj_player)
{
    if (key_up && ((ladderbuffer == 0) && (((state == 0) || ((state == 16) || ((state == 44) || (state == 18)))) && ((state != 59) && ((state != 55) && ((state != 56) && ((state != 57) && ((state != 60) && (state != 63)))))))))
    {
        state = 45;
        x = (other.x + 16);
        y = floor(y);
        if ((y % 2) == 1)
            y -= 1;
    }
}
