function scr_player_uppunch() {
	scr_getinput();
	if (windingAnim < 200) windingAnim += 5;
	movespeed = 0;
	mach2 = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	if (floor(image_index) == 8)
	    state = 0;
	sprite_index = spr_player_uppunch;
	image_speed = 0.35;
	scr_collideandmove();
}