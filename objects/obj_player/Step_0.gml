scr_getinput();
with (obj_player) {
    switch state {
        case 0:
            scr_player_normal();
            break;
		case 1:
			scr_player_slap();
			break;
		case 2:
			scr_player_pistolaim();
			break;
		case 3:
			scr_player_climbwall();
   			break;
        case 4:
            scr_player_knightpepslopes();
            break;
		case 5:
			scr_player_portal();
   			break;
        case 6:
            scr_player_secondjump();
            break;
        case 7:
            scr_player_chainsawbump();
            break;
        case 8:
            scr_player_handstandjump();
            break;
        case 9:
            scr_player_gottreasure();
            break;
        case 10:
            scr_player_knightpep();
            break;
        case 11:
            scr_player_knightpepattack();
            break;
        case 12:
            scr_player_meteorpep();
            break;
        case 13:
            scr_player_bombpep();
            break;
        case 14:
            scr_player_grabbing();
            break;
        case 15:
            scr_player_chainsawpogo();
            break;
        case 16:
            scr_player_shotgunjump();
            break;
        case 17:
            scr_player_stunned();
            break;
        case 18:
            scr_player_highjump();
            break;
        case 19:
            scr_player_chainsaw();
            break;
        case 20:
            scr_player_facestomp();
            break;
        case 21:
            scr_player_mach4();
            break;
        case 22:
            scr_player_timesup();
            break;
		case 23:
			scr_player_machroll();
			break;
		case 24:
			scr_player_shotgun();
			break;
		case 25:
			scr_player_pistol();
			break;
        case 26:
            scr_player_machfreefall();
            break;
        case 27:
            scr_player_throw();
            break;
        case 28:
            scr_player_slam();
            break;
        case 29:
            scr_player_superslam();
            break;
        case 30:
            scr_player_skateboard();
            break;
        case 31:
            scr_player_grind();
            break;
        case 32:
            scr_player_grab();
            break;
        case 33:
            scr_player_punch();
            break;
        case 34:
            scr_player_backkick();
            break;
        case 35:
            scr_player_uppunch();
            break;
        case 36:
            scr_player_shoulder();
            break;
		case 37:
			scr_player_backbreaker();
			break;
        case 39:
            scr_player_pizzathrow();
            break;
        case 40:
            scr_player_bossintro();
            break;
        case 41:
            scr_player_gameover();
            break
        case 42:
            scr_player_keyget();
            break;
        case 43:
            scr_player_tackle();
            break;
        case 44:
            scr_player_jump();
            break;
		case 45:
			scr_player_ladder();
			break;
		case 46:
			scr_player_slipnslide();
			break;
		case 47:
			scr_player_comingoutdoor();
			break;
        case 48:
            scr_player_smirk();
            break;
		case 49:
			scr_player_Sjump();
			break;
        case 50:
            scr_player_victory();
            break;
		case 51:
			scr_player_Sjumpprep();
			break;
        case 52:
            scr_player_crouch();
            break;
        case 53:
            scr_player_crouchjump();
            break;
        case 54:
            scr_player_crouchslide();
            break;
        case 55:
            scr_player_mach1();
            break;
        case 56:
            scr_player_mach2();
            break;
        case 57:
            scr_player_machslide();
            break;
        case 58:
            scr_player_bump();
            break;
		case 59:
			scr_player_hurt();
			break;
		case 60:
			scr_player_freefall();
			break;
        case 61:
            scr_player_hang();
            break;
		case 63:
			scr_player_freefallland();
			break;
		case 64:
			scr_player_door();
			break;
        case 65:
            scr_player_barrelcrouch();
            break;
        case 66:
            scr_player_barrelfloat();
            break;
        case 67:
            scr_player_barrelmach2();
            break;
        case 68:
            scr_player_barrelmach1();
            break;
        case 69:
            scr_player_barrelfall();
            break;
        case 70:
            scr_player_barrelnormal();
            break;
       case 71:
            scr_player_barrelslipnslide();
            break;
        case 72:
            scr_player_barrelroll();
            break;
        case 73:
            scr_player_current();
            break;
		case 76:
			scr_player_mach3();
			break;
		case 77:
			scr_player_freefallprep();
			break;
		case 78:
			scr_player_Sjumpland();
			break;
    }
	if place_meeting(x, (y + 1), obj_collisionparent) && state != 63 && slammed == 1 {
		slammed = 0;
	}
    if (state == 55 && place_meeting(x, (y + 1), obj_collisionparent))
    {
        if (!audio_is_playing(sound_dash1))
            scr_sound(sound_dash1);
    }
    else
        audio_stop_sound(sound_dash1);
    if ((state == 76 || state == 56) && place_meeting(x, (y + 1), obj_collisionparent))
    {
        if (!audio_is_playing(sound_dash2))
            scr_sound(sound_dash2);
    }
    else
        audio_stop_sound(sound_dash2);
    if ((sprite_index == spr_player_idlevomit) && ((image_index > 28) && (image_index < 43)))
        instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit);
    if ((sprite_index == spr_player_idlevomitblood) && ((image_index > 28) && (image_index < 43)))
    {
        with (instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit))
            sprite_index = spr_vomit2;
    }
    if (global.ammo <= 0)
        shotgunAnim = 0;
    if (global.combotime > 0)
        global.combotime -= 0.5;
    if ((global.combotime == 0) && (global.combo != 0))
        global.combo = 0;
    if (input_buffer_jump < 8)
        input_buffer_jump++;
    if (input_buffer_secondjump < 8)
        input_buffer_secondjump++;
    if (input_buffer_highjump < 8)
        input_buffer_highjump++;
    if (slapbuffer < 8)
        slapbuffer++;
    if (key_particles == 1)
        instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect);
    if ((!place_meeting((x + sign(hsp)), y, obj_collisionparent)) && ((!place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent)) && place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent)))
        goingdownslope = 1;
    else
        goingdownslope = 0;
    if (place_meeting((x + sign(hsp)), y, obj_collisionparent) && (!place_meeting((x + sign(hsp)), (y - 1), obj_collisionparent)))
        goingupslope = 1;
    else
        goingupslope = 0;
    if ((inv_frames == 0) && (hurted == 0))
        image_alpha = 1;
    if ((state == 56) || ((state == 30) || ((state == 10) || ((state == 4) || ((state == 11) || ((state == 13) || ((state == 20) || ((state == 26) || ((state == 20) || ((state == 23) || ((state == 76) || ((state == 29) || ((state == 60) || (state == 49))))))))))))))
        attacking = 1;
    else
        attacking = 0;
    if ((state == 27) || ((state == 33) || ((state == 34) || ((state == 36) || (state == 35)))))
        grabbing = 1;
    else
        grabbing = 0;
    if ((state == 76) || ((state == 30) || ((state == 21) || ((state == 60) || ((state == 29) || ((state == 49) || ((state == 23) || (state == 26))))))))
        instakillmove = 1;
    else
        instakillmove = 0;
    if ((flash == 1) && (alarm[0] <= 0))
        alarm[0] = (0.15 * room_speed);
    if ((state != 76) && (state != 57))
        autodash = 0;
    if (((state != 44) && ((state != 53) && (state != 1))) || (vsp < 0))
        fallinganimation = 0;
    if ((state != 63) && ((state != 0) && (state != 57)))
        facehurt = 0;
    if ((state != 0) && (state != 57))
        machslideAnim = 0;
    if (state != 0)
    {
        idle = 0;
        dashdust = 0;
    }
    if ((state != 55) && ((state != 44) && ((state != 0) && ((state != 56) && ((state != 76) && ((state != 77) && ((state != 10) && ((state != 24) && (state != 4)))))))))
        momemtum = 0;
    if (state != 19)
        chainsaw = 50;
    if (movespeed < 8)
        dashdust = 0;
    if ((state != 49) && (state != 51))
        a = 0;
    if ((state != 32) && ((state != 27) && ((state != 36) && ((state != 33) && ((state != 34) && ((state != 35) && (state != 28)))))))
        throwforce = 0;
    if (state != 20)
        facestompAnim = 0;
    if ((state != 25) && ((state != 24) && (state != 16)))
        shoot = 1;
    if (state != 28)
        slamming = 0;
    if ((state != 60) && ((state != 20) && ((state != 29) && (state != 63))))
        superslam = 0;
    if (state != 56)
        machpunchAnim = 0;
    if (state != 56)
        machfreefall = 0;
    if (state != 44)
        ladderbuffer = 0;
    if (state != 44)
        stompAnim = 0;
    if (((state == 76) || ((state == 23) || ((state == 57) && (mach2 >= 100)))) && (!instance_exists(obj_mach3effect)))
    {
        toomuchalarm1 = 6;
        instance_create(x, y, obj_mach3effect);
    }
    if (toomuchalarm1 > 0)
    {
        toomuchalarm1 -= 1;
        if ((toomuchalarm1 <= 0) && ((state == 76) || (((state == 57) && (mach2 >= 100)) || ((state == 23) || ((state == 19) && (mach2 >= 100))))))
        {
            instance_create(x, y, obj_mach3effect);
            toomuchalarm1 = 6;
        }
    }
    if ((state != 60) && (state != 29))
        obj_camera.zoom = 0;
    if ((state != 58) && ((state != 52) && (((state != 25) && (sprite_index != spr_player_crouchshoot)) && ((state != 51) && ((state != 19) && ((state != 23) && ((state != 59) && ((state != 54) && (state != 53) && sprite_index != spr_player_machroll))))))))
        mask_index = spr_player_mask;
    else
        mask_index = spr_crouchmask;
    if ((state == 9) || ((sprite_index == spr_knightpep_start) || ((sprite_index == spr_knightpep_thunder) || ((state == 42) || ((state == 64) || ((state == 50) || (state == 47)))))))
        cutscene = 1;
    else
        cutscene = 0;
    if (state != 59)
        hurtsound = 0;
    if ((place_meeting(x, y, obj_door) || ((place_meeting(x, y, obj_keydoor) && (global.keyget == 1)) || (place_meeting(x, y, obj_exitgate) && (global.panic == 1)))) && ((!instance_exists(obj_uparrow)) && (place_meeting(x, (y + 1), obj_collisionparent) && (state == 0))))
        instance_create(x, y, obj_uparrow);
    if ((global.hp <= 0) && (room != timesuproom))
    {
        state = 22;
        room = timesuproom;
    }
    if ((state == 56) && ((!instance_exists(obj_speedlines)) && place_meeting(x, (y + 1), obj_collisionparent)))
        instance_create(x, y, obj_speedlines);
}