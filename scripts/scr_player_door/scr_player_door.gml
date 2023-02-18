function scr_player_door(){
	scr_getinput();
	hsp = 0;
	mach2 = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	machhitAnim = 0;
	sprite_index = spr_player_lookdoor;
	if (floor(image_index) == 4)
	    image_speed = 0;
}