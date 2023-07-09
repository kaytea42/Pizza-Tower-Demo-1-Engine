function scr_player_facestomp(){
	scr_getinput();
	move = (key_left + key_right);
	jumpAnim = 0;
	hsp = (move * movespeed);
	if ((place_meeting((x + 1), y, obj_bumpable) && xscale == 1) || (place_meeting((x - 1), y, obj_bumpable) && xscale == -1))
	    movespeed = 0;
	if (move == 0)
	    movespeed = 0;
	if (move != 0 && movespeed < 6)
	    movespeed += 0.5;
	if (xscale == 1 && move == -1)
	    movespeed = 0;
	if (xscale == -1 && move == 1)
	    movespeed = 0;
	if (!key_down)
	    state = 44;
	landAnim = 1;
	if (vsp > 0)
	    superslam++;
	else
	    superslam = 0;
	if (vsp > 15)
	{
	    state = 60;
	    superslam = 0;
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && ((!(place_meeting(x, (y + 1), obj_destructibles))) || place_meeting(x, (y + 1), obj_metalblock)) && vsp > 0)
	{
	    scr_sound(sfx_facestomp);
	    state = 63;
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
	if (facestompAnim == 0)
	    sprite_index = spr_player_facestomp;
	else if (facestompAnim == 1)
	{
	    sprite_index = spr_player_facestomphit;
	    if (floor(image_index) == 5)
	        facestompAnim = 0;
	}
	if (move != 0)
	    xscale = move;
	image_speed = 0.35;
	if (place_meeting(x, (y + 1), obj_collisionparent) && input_buffer_jump < 8 && vsp > 0)
	{
	    sprite_index = spr_player_hanstandjump;
	    stompAnim = 0;
	    hsp = 0;
	    state = 8;
	    jumpAnim = 1;
	    jumpstop = 0;
	    image_index = 0;
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud);
	    freefallstart = 0;
	}
	if key_jump
	    input_buffer_jump = 0;
	scr_collideandmove();
}