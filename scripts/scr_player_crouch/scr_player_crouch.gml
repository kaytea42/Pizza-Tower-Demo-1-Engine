function scr_player_crouch() {
	scr_getinput();
	move = (key_left + key_right);
	hsp = (move * movespeed);
	mask_index = spr_crouchmask;
	turning = 0;
	movespeed = 4;
	if ((!grounded) && (!key_jump))
	{
	    jumpAnim = 0;
	    state = 53;
	    movespeed = 4;
	    crouchAnim = 1;
	    image_index = 0;
	}
	if (key_jump && (grounded && ((!place_meeting(x, (y - 16), obj_collisionparent)) && (!scr_solid(x, (y - 32))))))
	{
	    scr_sound(sound_jump);
	    vsp = -8;
	    state = 53;
	    movespeed = 4;
	    image_index = 0;
	    crouchAnim = 1;
	    jumpAnim = 1;
	}
	if (grounded && ((!key_down) && ((!scr_solid(x, (y - 16))) && ((!scr_solid(x, (y - 32))) && (!key_jump)))))
	{
	    state = 0;
	    movespeed = 0;
	    crouchAnim = 1;
	    jumpAnim = 1;
	    image_index = 0;
	    mask_index = spr_player_mask;
	}
	if (crouchAnim == 0)
	{
	    if (move == 0)
	    {
	        if (shotgunAnim == 0)
	            sprite_index = spr_player_crouch;
	        else
	            sprite_index = spr_shotgun_duck;
	    }
	    if (move != 0)
	        sprite_index = spr_player_crawl;
	}
	if (crouchAnim == 1)
	{
	    if (move == 0)
	    {
	        if (shotgunAnim == 0)
	            sprite_index = spr_player_couchstart;
	        else
	            sprite_index = spr_shotgun_goduck;
	        if (floor(image_index) == (image_number - 1))
	            crouchAnim = 0;
	    }
	}
	if (move != 0)
	{
	    xscale = move;
	    crouchAnim = 0;
	}
	if key_shoot2
	{
	    sprite_index = spr_player_crouchshoot;
	    state = 25;
	    image_index = 0;
	    shoot = 1;
	}
	image_speed = 0.6;
	scr_collideandmove();
}