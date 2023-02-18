function scr_player_mach1() {
	scr_getinput();
	move = (key_left + key_right);
	landAnim = 0;
	if (scr_solid((x + 1), y) && ((xscale == 1) && (!place_meeting((x + 1), y, obj_slopes))))
	{
	    mach2 = 0;
	    state = 0;
	    movespeed = 0;
	}
	if (scr_solid((x - 1), y) && ((xscale == -1) && (!place_meeting((x - 1), y, obj_slopes))))
	{
	    mach2 = 0;
	    state = 0;
	    movespeed = 0;
	}
	if (movespeed <= 8)
	    movespeed += 0.25;
	machhitAnim = 0;
	crouchslideAnim = 1;
	hsp = floor((xscale * movespeed));
	if (grounded && ((xscale == 1) && (move == -1)))
	{
	    momemtum = 0;
	    mach2 = 0;
	    movespeed = 0;
	    image_index = 0;
	    xscale = -1;
	}
	if (grounded && ((xscale == -1) && (move == 1)))
	{
	    momemtum = 0;
	    mach2 = 0;
	    movespeed = 0;
	    image_index = 0;
	    xscale = 1;
	}
	if grounded
	{
	    if (mach2 < 35)
	        mach2++;
	    if (mach2 >= 35)
	    {
	        state = 56;
	        instance_create(x, y, obj_jumpdust);
	    }
	}
	sprite_index = spr_player_mach1
	if (!grounded)
	{
	    sprite_index = spr_player_airdash1;
	    momemtum = 1;
	    state = 44;
	    jumpAnim = 0;
	    image_index = 0;
	}
	if ((!key_attack) && grounded)
	{
	    state = 0;
	    image_index = 0;
	    mach2 = 0;
	}
	if key_down
	{
	    sprite_index = spr_player_crouchslip;
	    state = 54;
	    mach2 = 0;
	}
	image_speed = 0.45;
	if (key_jump && (grounded && key_attack))
	{
	    scr_sound(sound_jump);
	    sprite_index = spr_player_airdash1;
	    dir = xscale;
	    momemtum = 1;
	    vsp = -11;
	    state = 44;
	    jumpAnim = 1;
	    image_index = 0;
	}
	if key_taunt2 && canTaunt
	{
	    scr_sound(sound_taunt);
	    taunttimer = 20;
	    tauntstoredmovespeed = movespeed;
	    tauntstoredsprite = sprite_index;
	    tauntstoredstate = state;
		sprite_index = spr_player_taunt;
	    state = 37;
	    image_index = random_range(0, (sprite_get_number(spr_player_taunt) - 1));
	    sprite_index = spr_player_taunt;
	    instance_create(x, y, obj_taunteffect);
	}
	if ((!instance_exists(obj_dashcloud)) && ((!place_meeting(x, y, obj_water2)) && place_meeting(x, (y + 1), obj_collisionparent)))
	    instance_create(x, y, obj_dashcloud);
	scr_collideandmove();
}