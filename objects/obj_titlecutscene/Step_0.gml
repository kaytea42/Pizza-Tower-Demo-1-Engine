if (drop == 1)
    scr_collideandmove();
if ((x > 960) && (!instance_exists(obj_fadeout)))
{
    with (instance_create(x, y, obj_fadeout))
        gotonoplayer = Titlescreen;
	with obj_newtv {
		sprite_index = spr_tvturnon;
		image_index = 0;
	}
}
if ((sprite_index == spr_pepcooter) && (!instance_exists(obj_superdashcloud)))
    instance_create((x - 100), y, obj_superdashcloud);