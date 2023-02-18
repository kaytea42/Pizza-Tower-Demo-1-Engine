function scr_player_Sjumpprep() {
	scr_getinput();
	combo = 0;
	mach2 = 0;
	move = (key_left + key_right);
	if (sprite_index == spr_player_superjumpprep)
	{
	    hsp = (xscale * movespeed);
	    if (movespeed >= 0)
	        movespeed -= 0.8;
	}
	if ((sprite_index == spr_player_superjumppreplight) || ((sprite_index == spr_player_superjumpright) || (sprite_index == spr_player_superjumpleft)))
	    hsp = (move * 2);
	if ((move == 0) && (movespeed < 0))
	    sprite_index = spr_player_superjumppreplight;
	if ((move == 1) && (movespeed < 0))
	{
	    if (xscale == 1)
	        sprite_index = spr_player_superjumpright;
	    if (xscale == -1)
	        sprite_index = spr_player_superjumpleft;
	}
	if ((move == -1) && (movespeed < 0))
	{
	    if (xscale == 1)
	        sprite_index = spr_player_superjumpleft;
	    if (xscale == -1)
	        sprite_index = spr_player_superjumpright;
	}
	start_running = 1;
	alarm[4] = 14;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	machslideAnim = 1;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	if ((floor(image_index) == (image_number - 1)) && (sprite_index == spr_player_superjumpprep))
	    sprite_index = spr_player_superjumppreplight;
	if ((!key_up) && (((sprite_index == spr_player_superjumppreplight) || ((sprite_index == spr_player_superjumpleft) || (sprite_index == spr_player_superjumpright))) && ((!scr_solid(x, (y - 16))) && (!scr_solid(x, (y - 32))))))
	{
	    scr_sound(sound_superjump);
	    instance_create(x, y, obj_explosioneffect);
	    sprite_index = spr_player_superjump;
	    state = 49;
	    vsp = -15;
	}
	image_speed = 0.35;
	scr_collideandmove();
}