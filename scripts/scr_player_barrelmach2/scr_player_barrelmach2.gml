function scr_player_barrelmach2(){
	scr_getinput();
	hsp = (image_xscale * movespeed);
	movespeed = 10;
	if (vsp < 12)
	    vsp += grav;
	if (!(place_meeting(x, (y + 1), obj_wall)))
	{
	    state = 69;
	    image_index = 0;
	}
	if ((!key_attack) && place_meeting(x, (y + 1), obj_wall))
	{
	    state = 70;
	    image_index = 0;
	    mach2 = 0;
	}
	if (place_meeting((x + 1), y, obj_wall) && image_xscale == 1)
	{
	    barrel = 0;
	    state = 58;
	    hsp = -2;
	    vsp = -2;
	    mach2 = 0;
	    image_index = 0;
	    instance_create((x + 10), (y + 10), obj_bumpeffect);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	}
	if (place_meeting((x - 1), y, obj_wall) && image_xscale == -1)
	{
	    barrel = 0;
	    state = 58;
	    hsp = 2;
	    vsp = -2;
	    mach2 = 0;
	    image_index = 0;
	    instance_create((x - 10), (y + 10), obj_bumpeffect);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris);
	}
	sprite_index = spr_player_barrelmach;
	image_speed = 0.35;
	instance_create(x, y, obj_mach2effect);
	if ((!instance_exists(obj_dashcloud)) && place_meeting(x, (y + 1), obj_wall))
	    instance_create(x, y, obj_dashcloud);
	scr_collideandmove();
}