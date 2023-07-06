function scr_player_tackle() {
	scr_getinput();
	combo = 0;
	movespeed = 0;
	mach2 = 0;
	start_running = 1;
	alarm[4] = 14;
	if ((place_meeting(x, (y + 1), obj_collisionparent)) && (vsp > 0))
	    hsp = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	if (floor(image_index) == 6)
	    state = 0;
	sprite_index = spr_player_tackle;
	image_speed = 0.35;
	scr_collideandmove();
}