function scr_player_smirk(){
	scr_getinput();
	image_speed = 0.35;
	sprite_index = spr_player_smirk;
	scr_collideandmove();
}