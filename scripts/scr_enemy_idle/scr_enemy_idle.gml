function scr_enemy_idle(){
	if vsp > 1 && grounded {
	    instance_create(x, y, obj_landcloud);
	    image_index = 0;
	}
	if ((floor(image_index) == (image_number - 1)) && ((roaming == 1) && (grounded))){
	    state = 85;
	    image_index = 0;
	}
	if grounded && vsp > 0 hsp = 0;
	if !grounded && hsp < 0 hsp += 0.1;
	else if !grounded && hsp > 0 hsp -= 0.1;
	sprite_index = idlespr;
	image_speed = 0.35;
	scr_collideandmove();
}