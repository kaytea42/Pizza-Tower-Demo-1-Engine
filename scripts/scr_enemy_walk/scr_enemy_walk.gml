function scr_enemy_walk(){
	if grounded hsp = (image_xscale * movespeed);
	else hsp = 0;
	if ((roaming == 0) && (grounded)) {
	    hsp = 0;
	    state = 79;
	    image_index = 0;
	}
	if (grounded) sprite_index = walkspr;
	else {
	    sprite_index = idlespr;
	    state = 79;
	}
	image_speed = 0.35;
	if (((scr_solid((x + 1), y) && (image_xscale == 1)) || (scr_solid((x - 1), y) && (image_xscale == -1))) && (!place_meeting((x + sign(hsp)), y, obj_slopes))) image_xscale *= -1;
	if ((!(scr_solid((x + 15), (y + 31)) || scr_solid((x + 15), (y + 31)))) && (image_xscale == 1)) image_xscale *= -1;
	if ((!(scr_solid((x - 15), (y + 31)) || scr_solid((x - 15), (y + 31)))) && (image_xscale == -1)) image_xscale *= -1;
	if !grounded && hsp < 0 hsp += 0.1;
	else if !grounded && hsp > 0 hsp -= 0.1;
	scr_collideandmove();
}