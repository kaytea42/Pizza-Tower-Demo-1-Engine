function scr_player_crouchjump() {
	scr_getinput();
	move = (key_left + key_right);
	fallinganimation++;
	if ((fallinganimation >= 40) && (fallinganimation < 80))
	{
	    sprite_index = spr_player_facestomp;
	    state = 44;
	}
	mask_index = spr_crouchmask;
	hsp = (move * movespeed);
	movespeed = 4;
	if ((!key_jump2) && ((jumpstop == 0) && (jumpAnim == 1)))
	{
	    vsp /= 2;
	    jumpstop = 1;
	}
	if (place_meeting(x, (y - 1), obj_collisionparent) && ((jumpstop == 0) && (jumpAnim == 1)))
	{
	    vsp = grav;
	    jumpstop = 1;
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && key_down)
	{
	    state = 52;
	    jumpAnim = 1;
	    crouchAnim = 1;
	    image_index = 0;
	    jumpstop = 0;
	    if (!place_meeting(x, y, obj_water2))
	        instance_create(x, y, obj_landcloud);
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && ((!key_down) && (!place_meeting(x, (y - 16), obj_collisionparent))))
	{
	    movespeed = 0;
	    state = 0;
	    jumpAnim = 1;
	    landAnim = 1;
	    crouchAnim = 1;
	    image_index = 0;
	    jumpstop = 0;
	    if (!place_meeting(x, y, obj_water2))
	        instance_create(x, y, obj_landcloud);
	    mask_index = spr_player_mask;
	}
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    state = 52;
	    jumpAnim = 1;
	    crouchAnim = 1;
	    image_index = 0;
	    jumpstop = 0;
	    if (!place_meeting(x, y, obj_water2))
	        instance_create(x, y, obj_landcloud);
	}
	if (jumpAnim == 1)
	{
	    sprite_index = spr_player_crouchjump;
	    if (floor(image_index) == 8)
	        jumpAnim = 0;
	}
	if (jumpAnim == 0)
	    sprite_index = spr_player_crouchfall;
	if (move != 0)
	    xscale = move;
	image_speed = 0.35;
	scr_collideandmove();
}