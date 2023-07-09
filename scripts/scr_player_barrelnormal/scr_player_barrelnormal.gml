function scr_player_barrelnormal(){
	scr_getinput();
	mask_index = spr_player_mask;
	move = (key_left + key_right);
	hsp = (move * movespeed);
	if (vsp < 12)
	    vsp += grav;
	if ((!(place_meeting(x, (y + 1), obj_collisionparent))) && (!key_jump))
	{
	    state = 69;
	    image_index = 0;
	    hsp = 0;
	}
	if ((key_down && place_meeting(x, (y + 1), obj_collisionparent)) || place_meeting(x, (y - 3), obj_collisionparent))
	{
	    state = 65;
	    image_index = 0;
	}
	if (key_attack && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    movespeed = 0;
	    state = 68;
	    landAnim = 0;
	}
	if place_meeting(x, y, obj_water2)
	    vsp -= 1;
	movespeed = 2.5;
	if (move == 0)
	    sprite_index = spr_player_barrelidle;
	if (move != 0)
	{
	    sprite_index = spr_player_barrelmove;
	    xscale = move;
	}
	image_speed = 0.35;
	scr_collideandmove();
}