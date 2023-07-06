function scr_player_freefallprep(){
	scr_getinput();
	hsp = (xscale * movespeed);
	if (((place_meeting((x + 1), y, obj_collisionparent) && move == 1) || (place_meeting((x - 1), y, obj_collisionparent) && move == -1)) && (!(place_meeting((x + sign(hsp)), y, obj_slopes))))
	    movespeed = 0;
	start_running = 1;
	alarm[4] = 14;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	machslideAnim = 1;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	if (place_meeting((x + 1), y, obj_collisionparent) && xscale == 1 && (!(place_meeting((x + 1), y, obj_slopes))))
	{
	    movespeed = 0;
	    state = 58;
	    hsp = -2.5;
	    vsp = -3;
	    mach2 = 0;
	    image_index = 0;
	    instance_create((x + 10), (y + 10), obj_bumpeffect);
	}
	if (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1 && (!(place_meeting((x - 1), y, obj_slopes))))
	{
	    movespeed = 0;
	    state = 58;
	    hsp = 2.5;
	    vsp = -3;
	    mach2 = 0;
	    image_index = 0;
	    instance_create((x - 10), (y + 10), obj_bumpeffect);
	}
	sprite_index = spr_player_bodyslamstart;
	if (floor(image_index) == (image_number - 1))
	    image_speed = 0;
	else
	    image_speed = 0.35;
	scr_collideandmove();
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    sprite_index = spr_player_crouchslip;
	    state = 54;
	}
	if (!key_down)
	{
	    vsp += 14;
	    state = 60;
	}
}