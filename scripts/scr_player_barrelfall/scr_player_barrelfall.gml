function scr_player_barrelfall(){
	scr_getinput();
	mask_index = spr_player_mask;
	if (vsp < 12)
	    vsp += grav;
	if place_meeting(x, y, obj_water2)
	    vsp -= 1;
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    state = 65;
	    image_index = 0;
	}
	if place_meeting(x, y, obj_water2)
	{
	    state = 66;
	    image_index = 0;
	}
	sprite_index = spr_player_barrelfall;
	image_speed = 0.35;
	scr_collideandmove();
}