function scr_player_mach3() {
	scr_getinput();
	if (windingAnim < 200)
	    windingAnim++;
	hsp = (xscale * movespeed);
	mach2 = 100;
	momemtum = 1;
	move = (key_right + key_left);
	movespeed = 12;
	crouchslideAnim = 1;
	if ((input_buffer_jump < 8) && (grounded && ((!((move == 1) && (xscale == -1))) && ((!((move == -1) && (xscale == 1))) && key_attack))))
	{
	    scr_sound(sound_jump);
	    image_index = 0;
	    sprite_index = spr_player_mach3jump;
	    vsp = -9;
	}
	if (place_meeting(x, y, obj_wall) || ((sprite_index == spr_player_mach3jump) && (floor(image_index) == (image_number - 1))))
	    sprite_index = spr_player_mach4;
	if ((!key_jump2) && ((jumpstop == 0) && ((vsp < 0.5) && (stompAnim == 0))))
	{
	    vsp /= 2;
	    jumpstop = 1;
	}
	if (grounded && (vsp > 0))
	    jumpstop = 0;
	if key_jump
	    input_buffer_jump = 0;
	if (key_up && grounded)
	{
	    sprite_index = spr_player_superjumpprep;
	    state = 51;
	    hsp = 0;
	    image_index = 0;
		
	}
	if ((!key_attack) && (grounded && (autodash == 0)))
	{
	    mach2 = 0;
	    sprite_index = spr_player_machslidestart;
	    flash = 0;
	    state = 57;
	    image_index = 0;
	}
	if (((move == -1) && (xscale == 1)) && grounded)
	{
	    sprite_index = spr_player_machslideboost3;
	    flash = 0;
	    state = 57;
	    image_index = 0;
	    mach2 = 100;
	}
	if (((move == 1) && (xscale == -1)) && grounded)
	{
	    sprite_index = spr_player_machslideboost3;
	    flash = 0;
	    state = 57;
	    image_index = 0;
	    mach2 = 100;
	}
	if (key_down && (grounded && (!place_meeting(x, y, obj_dashpad))))
	{
	    instance_create(x, y, obj_jumpdust);
	    flash = 0;
	    state = 23;
	}
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    if (place_meeting((x + 1), y, obj_bumpable) && xscale == 1 && (!(place_meeting((x + sign(hsp)), y, obj_slopes))))
	    {
	        scr_sound(sound_enemystomp);
	        with (obj_camera)
	        {
	            shake_mag = 20;
	            shake_mag_acc = (40 / room_speed);
	        }
	        hsp = 0;
	        image_speed = 0.35;
	        with (obj_baddie)
	        {
	            if point_in_rectangle(x, y, view_xport[0], view_yport[0], (view_xport[0] + view_wport[0]), (view_yport[0] + view_hport[0]))
	            {
	                stun = 1;
	                alarm[0] = 200;
	                ministun = 0;
	                vsp = -5;
	                hsp = 0;
	                image_xscale *= -1;
	            }
	        }
	        flash = 0;
	        combo = 0;
	        state = 58;
	        hsp = -2.5;
	        vsp = -3;
	        mach2 = 0;
	        image_index = 0;
	        instance_create((x + 10), (y + 10), obj_bumpeffect);
	    }
	    if (place_meeting((x - 1), y, obj_bumpable) && xscale == -1 && (!(place_meeting((x + sign(hsp)), y, obj_slopes))))
	    {
	        scr_sound(sound_enemystomp);
	        with (obj_camera)
	        {
	            shake_mag = 20;
	            shake_mag_acc = (40 / room_speed);
	        }
	        hsp = 0;
	        image_speed = 0.35;
	        flash = 0;
	        combo = 0;
	        state = 58;
	        hsp = 2.5;
	        vsp = -3;
	        mach2 = 0;
	        image_index = 0;
	        instance_create((x - 10), (y + 10), obj_bumpeffect);
	    }
	}
	if (((!grounded) && (place_meeting((x + hsp), y, obj_wall) && ((!place_meeting((x + hsp), y, obj_destructibles)) && ((!place_meeting((x + hsp), y, obj_metalblock)) && (!place_meeting((x + sign(hsp)), y, obj_slopes)))))) || (grounded && (place_meeting((x + hsp), (y - 32), obj_wall) && ((!place_meeting((x + hsp), y, obj_destructibles)) && ((!place_meeting((x + hsp), y, obj_metalblock)) && place_meeting(x, (y + 1), obj_slopes)))))) {
		machhitAnim = 0;
		state = 3;
	}
	if place_meeting(x, (y + 1), obj_onewaywatersolid)
	{
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	}
	if (!instance_exists(obj_chargeeffect))
	    instance_create(x, y, obj_chargeeffect)
	if ((!instance_exists(obj_superdashcloud)) && (grounded && (!place_meeting(x, (y + 1), obj_water))))
	    instance_create(x, y, obj_superdashcloud)
	if (key_slap2 && ((shotgunAnim == 1) && ((global.ammo > 0) && (!grounded))))
	{
	    global.ammo -= 1
	    instance_create(x, (y + 80), obj_shotgunbulletdown)
	    vsp -= 11
	    sprite_index = spr_player_shotgunjump1
	    state = 24
	    image_index = 0
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
	image_speed = 0.4;
	scr_collideandmove();
}