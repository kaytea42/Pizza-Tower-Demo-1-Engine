function scr_player_bump() {
	scr_getinput();
	movespeed = 0;
	mach2 = 0;
	hurted = 0;
	inv_frames = 0;
	start_running = 1;
	alarm[4] = 14;
	if (grounded && (vsp > 0)) hsp = 0;
	if (floor(image_index) == (6)) && sprite_index == spr_player_bump state = 0;
	if (floor(image_index) == (image_number - 1)) && sprite_index == spr_player_mach3hitwall state = 0;
	if (sprite_index != spr_player_mach3hitwall) sprite_index = spr_player_bump;
	image_speed = 0.35;
	scr_collideandmove();
}