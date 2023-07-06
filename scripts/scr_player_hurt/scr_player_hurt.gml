function scr_player_hurt(){
	scr_getinput();
	if (sprite_index == spr_player_jumphurt)
	    hsp = (xscale * movespeed);
	if (sprite_index == spr_player_hurt)
	    hsp = ((-xscale) * movespeed);
	if (movespeed > 0)
	    movespeed -= 0.1;
	combo = 0;
	mach2 = 0;
	bounce = 0;
	jumpAnim = 1;
	dashAnim = 1;
	if place_meeting(x, (y + 1), obj_collisionparent)
	    landAnim = 0;
	else
	    landAnim = 1;
	jumpstop = 0;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 0;
	machhitAnim = 0;
	hurted = 1;
	turning = 0;
	if instance_exists(obj_hook)
	    obj_hook.hooked = 0;
	alarm[5] = 2;
	alarm[7] = 60;
	if place_meeting(x, (y + 1), obj_collisionparent)
	    vsp = -4;
	if place_meeting((x + hsp), y, obj_collisionparent)
	    xscale *= -1;
	image_speed = 0.35;
	scr_collideandmove();
}