function scr_player_barrelcrouch(){
	scr_getinput();
	mask_index = spr_player_mask;
	hsp = 0;
	if (vsp < 12)
	    vsp += grav;
	if (place_meeting(x, (y + 1), obj_collisionparent) && (!key_down) && image_speed == 0)
	{
	    state = 70;
	    movespeed = 2;
	    image_index = 0;
	}
	sprite_index = spr_player_barrelcrouch;
	if (floor(image_index) == 5)
	    image_speed = 0;
	else
	    image_speed = 0.35;
	scr_collideandmove();
}