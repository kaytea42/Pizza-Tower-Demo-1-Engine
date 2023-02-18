function scr_player_grab(){
	scr_getinput();
	hsp = (xscale * movespeed);
	if (movespeed > 0) movespeed -= 0.2;
	move = (key_left2 + key_right2);
	image_speed = 0.35;
	sprite_index = spr_player_grab;
	if key_slap2 {
	    hsp = 0;
	    movespeed = 0;
	    state = 27;
	    image_index = 1;
	    image_speed = 0.35;
	    scr_sound(sound_enemyslap);
	}
	if (move == xscale) {
	    hsp = 0;
	    movespeed = 0;
	    state = 33;
	    image_index = 1;
	    image_speed = 0.35;
	    scr_sound(sound_enemyslap);
	}
	if (move == (-xscale)) {
	    hsp = 0;
	    movespeed = 0;
	    state = 34;
	    image_index = 1;
	    image_speed = 0.35;
	    scr_sound(sound_enemyslap);
	}
	if key_up {
	    hsp = 0;
	    movespeed = 0;
	    state = 35;
	    image_index = 1;
	    image_speed = 0.35;
	    scr_sound(sound_enemyslap);
	}
	if key_down {
	    scr_sound(sound_enemyslap);
	    hsp = 0;
	    movespeed = 0;
	    state = 36;
	    image_index = 1;
	    image_speed = 0.35;
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, view_xview[0], view_yview[0], (view_xview[0] + view_wview[0]), (view_yview[0] + view_hview[0]))
	        {
	            vsp = -7;
	            hsp = 0;
	        }
	    }
	    with (obj_camera)
	    {
	        shake_mag = 10;
	        shake_mag_acc = (30 / room_speed);
	    }
	}
	landAnim = 0;
	scr_collideandmove();
	if key_jump {
	    scr_sound(sound_jump);
	    hsp = 0;
	    movespeed = 0;
	    sprite_index = spr_player_piledriver;
	    vsp = -14;
	    state = 29;
	    image_index = 0;
	    image_speed = 0.35;
	}
}