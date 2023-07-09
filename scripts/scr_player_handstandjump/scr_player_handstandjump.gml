function scr_player_handstandjump(){
	scr_getinput();
	mach2 = 0;
	move = (key_left + key_right);
	if (!(place_meeting(x, (y + 1), obj_collisionparent)))
	    hsp = (move * movespeed);
	else
	    hsp = 0;
	if (move == 0)
	    movespeed = 0;
	if (move != 0 && movespeed < 6)
	    movespeed += 0.5;
	if (((place_meeting((x + 1), y, obj_collisionparent) && move == 1) || (place_meeting((x - 1), y, obj_collisionparent) && move == -1)) && (!(place_meeting((x + sign(hsp)), y, obj_slopes))))
	    movespeed = 0;
	if (dir != xscale)
	{
	    dir = xscale;
	    movespeed = 2;
	}
	landAnim = 1;
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
	{
	    vsp /= 2;
	    jumpstop = 1;
	}
	if (ladderbuffer > 0)
	    ladderbuffer--;
	if (place_meeting(x, (y - 1), obj_collisionparent) && jumpstop == 0 && jumpAnim == 1)
	{
	    vsp = grav;
	    jumpstop = 1;
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0 && key_attack && sprite_index == spr_player_fall2)
	{
	    momemtum = 1;
	    landAnim = 0;
	    state = 55;
	    jumpAnim = 1;
	    jumpstop = 0;
	    image_index = 0;
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud);
	    freefallstart = 0;
	    audio_sound_gain(sfx_land, 0.7, 0);
	    if (!audio_is_playing(sfx_land))
	        audio_play_sound(sfx_land, 1, false);
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0 && (!key_attack) && sprite_index == spr_player_fall2)
	{
	    if key_attack
	        landAnim = 0;
	    state = 0;
	    jumpAnim = 1;
	    jumpstop = 0;
	    image_index = 0;
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud);
	    freefallstart = 0;
	    audio_sound_gain(sfx_land, 0.7, 0);
	    if (!audio_is_playing(sfx_land))
	        audio_play_sound(sfx_land, 1, false);
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && input_buffer_jump < 8 && vsp > 0 && sprite_index == spr_player_fall2)
	{
	    stompAnim = 0;
	    vsp = -11;
	    state = 6;
	    jumpAnim = 1;
	    jumpstop = 0;
	    image_index = 0;
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud);
	    freefallstart = 0;
	    audio_play_sound(sfx_jump, 1, false);
	}
	if key_jump
	    input_buffer_jump = 0;
	if (sprite_index == spr_player_hanstandjump && image_index > 3 && image_index < 4 && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    instance_create(x, y, obj_highjumpcloud1);
	    vsp = -14;
	    audio_play_sound(sfx_jump, 1, false);
	}
	if (sprite_index == spr_player_hanstandjump && floor(image_index) == (image_number - 1))
	    sprite_index = spr_player_fall2;
	if (move != 0 && (!(place_meeting(x, (y + 1), obj_collisionparent))))
	    xscale = move;
	image_speed = 0.35;
	scr_collideandmove();
}