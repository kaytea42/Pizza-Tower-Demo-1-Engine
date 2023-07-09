function scr_player_hang(){
	scr_getinput();
	hsp = 0;
	vsp = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	machslideAnim = 1;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	machhitAnim = 0;
	start_running = 1;
	alarm[4] = 14;
	image_speed = 0.35;
	scr_collideandmove();
}