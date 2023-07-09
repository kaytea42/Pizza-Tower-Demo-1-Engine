function scr_player_barrelmach1(){
	scr_getinput();
	hsp = (image_xscale * movespeed);
	if (movespeed <= 8)
	    movespeed += 0.2;
	if (vsp < 12)
	    vsp += grav;
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    if (mach2 < 35)
	        mach2++;
	    if (mach2 >= 35)
	    {
	        image_index = 0;
	        state = 71;
	        flash = 1;
	    }
	}
	if (!(place_meeting(x, (y + 1), obj_collisionparent)))
	{
	    state = 69;
	    image_index = 0;
	    hsp = 0;
	}
	if ((!key_attack) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    state = 70;
	    image_index = 0;
	    mach2 = 0;
	}
	if (place_meeting((x + 1), y, obj_collisionparent) && image_xscale == 1)
	{
	    state = 69;
	    hsp = -2;
	    vsp = -2;
	    mach2 = 0;
	    image_index = 0;
	    instance_create((x + 10), (y + 10), obj_bumpeffect);
	}
	if (place_meeting((x - 1), y, obj_collisionparent) && image_xscale == -1)
	{
	    state = 69;
	    hsp = 2;
	    vsp = -2;
	    mach2 = 0;
	    image_index = 0;
	    instance_create((x - 10), (y + 10), obj_bumpeffect);
	}
	sprite_index = spr_player_barrelmach;
	image_speed = 0.35;
	if ((!instance_exists(obj_dashcloud)) && place_meeting(x, (y + 1), obj_collisionparent))
	    instance_create(x, y, obj_dashcloud);
	scr_collideandmove();
}