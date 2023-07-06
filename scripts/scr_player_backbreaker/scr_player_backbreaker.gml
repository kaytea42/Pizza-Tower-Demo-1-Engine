function scr_player_backbreaker(){
	scr_getinput();
	if (windingAnim < 200)
	    windingAnim += 5;
	mach2 = 0;
	if (!(place_meeting(x, (y + 1), obj_collisionparent)))
	    image_speed = 0;
	else if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0)
	{
	    hsp = 0;
	    image_speed = 0.35;
	}
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	machslideAnim = 1;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	if (floor(image_index) == 8)
	    state = 0;
	sprite_index = spr_player_backbreaker;
	scr_collideandmove();
}