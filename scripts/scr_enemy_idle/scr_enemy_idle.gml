function scr_enemy_idle(){
	if (vsp > 1 && (place_meeting(x, (y + 1), obj_enemiesbumpable) || (place_meeting(x, (y + 1), obj_onewaywall) && (!(place_meeting(x, y, obj_onewaywall))))))
	{
	    instance_create(x, y, obj_landcloud);
	    image_index = 0;
	}
	if (floor(image_index) == (image_number - 1) && roaming == 1 && (place_meeting(x, (y + 1), obj_enemiesbumpable) || (place_meeting(x, (y + 1), obj_onewaywall) && (!(place_meeting(x, y, obj_onewaywall))))))
	{
	    state = 85;
	    image_index = 0;
	}
	if ((place_meeting(x, (y + 1), obj_enemiesbumpable) || (place_meeting(x, (y + 1), obj_onewaywall) && (!(place_meeting(x, y, obj_onewaywall))))) && vsp > 0)
	    hsp = 0;
	if ((!((place_meeting(x, (y + 1), obj_enemiesbumpable) || (place_meeting(x, (y + 1), obj_onewaywall) && (!(place_meeting(x, y, obj_onewaywall))))))) && hsp < 0)
	    hsp += 0.1;
	else if ((!((place_meeting(x, (y + 1), obj_enemiesbumpable) || (place_meeting(x, (y + 1), obj_onewaywall) && (!(place_meeting(x, y, obj_onewaywall))))))) && hsp > 0)
	    hsp -= 0.1;
	sprite_index = idlespr;
	image_speed = 0.35;
	scr_collideandmoveonlywall();
}