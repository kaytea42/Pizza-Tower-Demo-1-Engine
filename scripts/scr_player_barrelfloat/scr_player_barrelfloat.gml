function scr_player_barrelfloat(){
	scr_getinput();
	mask_index = spr_player_mask;
	move = (key_left + key_right);
	hsp = (move * movespeed);
	vsp = 0;
	if key_jump
	{
	    jumpstop = 1;
	    jumpAnim = 1;
	    state = 44;
	    landAnim = 0;
	    vsp = -7;
	    with (instance_create(x, y, obj_barrelfloat))
	        image_xscale = other.image_xscale;
	    image_index = 0;
	    barrel = 0;
	}
	movespeed = 2.5;
	if (move != 0)
	    image_xscale = move;
	sprite_index = spr_player_barrelfloat;
	image_speed = 0.35;
	if place_meeting(x, y, obj_water2)
	    vsp -= 1;
	scr_collideandmove();
}