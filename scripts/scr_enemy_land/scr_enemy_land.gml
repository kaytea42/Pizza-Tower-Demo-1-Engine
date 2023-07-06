function scr_enemy_land(){
	if (vsp > 0)
	    hsp = 0;
	sprite_index = landspr;
	image_speed = 0.35;
	if (floor(image_index) == (image_number - 1))
	{
	    sprite_index = idlespr;
	    state = 79;
	    image_index = 0;
	}
	scr_collideandmoveonlywall();
}