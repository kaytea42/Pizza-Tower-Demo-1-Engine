function scr_player_freefallland(){
	scr_getinput();
	mach2 = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 0;
	machhitAnim = 0;
	movespeed = 0;
	facehurt = 1;
	start_running = 1;
	alarm[4] = 14;
	vsp = 0;
	hsp = 0;
	sprite_index = spr_player_bodyslamland;
	if (floor(image_index) == (image_number - 1) && (!(superslam > 30)))
	    state = 0;
	if (floor(image_index) == (image_number - 1) && superslam > 30)
	{
	    state = 26;
	    vsp = -7;
	}
	image_speed = 0.35;
	scr_collideandmove();
}