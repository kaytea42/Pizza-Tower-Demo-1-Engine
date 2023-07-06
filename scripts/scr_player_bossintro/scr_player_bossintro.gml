function scr_player_bossintro(){
	scr_getinput();
	hsp = 0;
	xscale = 1;
	hurted = 0;
	inv_frames = 0;
	if (sprite_index == spr_player_bossintro && floor(image_index) == (image_number - 1))
	{
	    state = 0;
	    image_index = 0;
	}
	if (sprite_index == spr_player_levelcomplete && floor(image_index) == (image_number - 1))
	    image_speed = 0;
	else
	    image_speed = 0.35;
	scr_collideandmove();
}