obj_tv.image_index = random_range(0, 4);
scr_sleep(50);
instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_slapstar);
instance_create(x, y, obj_baddiegibs);
instance_create(x, y, obj_baddiegibs);
instance_create(x, y, obj_baddiegibs);
if (reset == 0)
{
    instance_create(x, (y + 30), obj_bangeffect);
    if (stomped == 0 && shot == 0)
    {
        with (obj_camera)
        {
            shake_mag = 5;
            shake_mag_acc = (20 / room_speed);
        }
        with (instance_create(x, y, obj_sausageman_dead))
            sprite_index = spr_coolpinea_dead;
    }
    if (stomped == 1 && shot == 0)
    {
        with (instance_create(x, y, obj_sausageman_dead))
            sprite_index = spr_coolpinea_dead;
        with (obj_camera)
        {
            shake_mag = 5;
            shake_mag_acc = (20 / room_speed);
        }
        hsp = 0;
        vsp = 0;
    }
    if (shot == 1 && stomped == 0)
    {
        with (instance_create(x, y, obj_sausageman_dead))
            sprite_index = spr_coolpinea_dead;
        with (obj_camera)
        {
            shake_mag = 20;
            shake_mag_acc = (40 / room_speed);
        }
        hsp *= 3;
        vsp *= 3;
    }
	enemy_combo();
}