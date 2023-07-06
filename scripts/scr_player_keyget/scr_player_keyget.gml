function scr_player_keyget(){
	scr_getinput();
	hsp = 0;
	vsp = 0;
	image_speed = 0.35;
	movespeed = 0;
	mach2 = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	machhitAnim = 0;
	sprite_index = spr_player_keyget;
	if (floor(image_index) == 47)
	{
	    global.keyget = 0;
	    state = 0;
	    image_index = 0;
	}
}