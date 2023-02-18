function scr_enemy_stun(){
	stunned--;
	sprite_index = stunfallspr;
	image_speed = 0.35;
	if grounded && vsp > 0 {
	    hsp = 0;
	    if (thrown == 1) instance_destroy();
	}
	if ((scr_solid((x + 1), y) && (image_xscale == -1)) || (scr_solid((x - 1), y) && (image_xscale == 1))) {
	    with (instance_create(x, y, obj_bulletimpact)) image_xscale = (-other.image_xscale);
	    image_xscale *= -1;
	    hsp = ((-image_xscale) * 4);
	}
	scr_collideandmove();
	if ((floor(image_index) == (image_number - 1)) && (stunned < 0)) {
	    vsp -= 4;
	    sprite_index = idlespr;
	    image_index = 0;
	    state = 79;
	}
}