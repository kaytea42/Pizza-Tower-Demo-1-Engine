instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_slapstar);
scr_sleep(50);
if (reset == 0)
{
    instance_create(x, y, obj_bangeffect);
    if (stomped == 0 && shot == 0)
    {
        if (cigar == 1)
        {
            with (obj_camera)
            {
                shake_mag = 5;
                shake_mag_acc = (20 / room_speed);
            }
            with (instance_create(x, y, obj_sausageman_dead))
                sprite_index = spr_pizzaboy;
        }
        else
        {
            with (obj_camera)
            {
                shake_mag = 5;
                shake_mag_acc = (20 / room_speed);
            }
            with (instance_create(x, y, obj_sausageman_dead))
                sprite_index = spr_pizzaboy;
        }
    }
    if (stomped == 1 && shot == 0)
    {
        if (cigar == 1)
        {
            with (instance_create(x, y, obj_sausageman_dead))
            {
                sprite_index = spr_pizzaboy;
                with (obj_camera)
                {
                    shake_mag = 5;
                    shake_mag_acc = (20 / room_speed);
                }
                hsp = 0;
                vsp = 0;
                cigar = 1;
            }
        }
        else
        {
            with (instance_create(x, y, obj_sausageman_dead))
            {
                sprite_index = spr_pizzaboy;
                with (obj_camera)
                {
                    shake_mag = 5;
                    shake_mag_acc = (20 / room_speed);
                }
                hsp = 0;
                vsp = 0;
            }
        }
    }
    if (shot == 1 && stomped == 0)
    {
        if (cigar == 1)
        {
            with (instance_create(x, y, obj_sausageman_dead))
            {
                sprite_index = spr_pizzaboy;
                with (obj_camera)
                {
                    shake_mag = 20;
                    shake_mag_acc = (40 / room_speed);
                }
                hsp *= 3;
                vsp *= 3;
                cigar = 1;
            }
        }
        else
        {
            with (instance_create(x, y, obj_sausageman_dead))
            {
                sprite_index = spr_pizzaboy;
                with (obj_camera)
                {
                    shake_mag = 20;
                    shake_mag_acc = (40 / room_speed);
                }
                hsp *= 3;
                vsp *= 3;
            }
        }
    }
}
scr_sound(sound_combo1);