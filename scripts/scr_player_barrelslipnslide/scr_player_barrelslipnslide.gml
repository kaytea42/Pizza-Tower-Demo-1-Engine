function scr_player_barrelslipnslide(){
	scr_getinput();
	mask_index = spr_player_mask;
	hsp = (image_xscale * movespeed);
	if (movespeed <= 8)
	    movespeed += 0.2;
	if (vsp < 12)
	    vsp += grav;
	sprite_index = spr_player_barrelslipnslide;
	if (floor(image_index) == 6)
	{
	    state = 72;
	    flash = 1;
	}
	else
	    image_speed = 0.35;
	scr_collideandmove();
}