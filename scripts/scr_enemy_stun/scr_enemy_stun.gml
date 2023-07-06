function scr_enemy_stun(){
	stunned--;
	sprite_index = stunfallspr;
	image_speed = 0.35;
	if ((place_meeting(x, (y + 1), obj_enemiesbumpable) || (place_meeting(x, (y + 1), obj_onewaywall) && (!(place_meeting(x, y, obj_onewaywall))))) && vsp > 0)
	{
	    hsp = 0;
	    if (thrown == 1)
	        instance_destroy();
	}
	if ((place_meeting((x + 1), y, obj_enemiesbumpable) && image_xscale == -1) || (place_meeting((x - 1), y, obj_enemiesbumpable) && image_xscale == 1))
	{
	    with (instance_create(x, y, obj_bulletimpact))
	        image_xscale = (-other.image_xscale);
	    image_xscale *= -1;
	    hsp = ((-image_xscale) * 4);
	}
	scr_collideandmoveonlywall();
	if (floor(image_index) == (image_number - 1) && stunned < 0)
	{
	    vsp -= 4;
	    sprite_index = idlespr;
	    image_index = 0;
	    state = 79;
	}

}