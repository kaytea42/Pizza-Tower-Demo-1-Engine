function scr_player_normal() {
	scr_getinput()
	if (dir != xscale)
	{
	    dir = xscale;
	    movespeed = 2;
	    facehurt = 0;
	}
	mach2 = 0;
	if !place_meeting(x, y, obj_movingplat) {
		move = (key_left + key_right);
		hsp = (move * movespeed);
	}
	else if place_meeting(x, y, obj_movingplat) {
		if hsp == 0 {
			hsp = other.id.hspeed;
		}
		move = (key_left + key_right);
		hsp = (move * movespeed);
		hsp = movespeed + other.id.hspeed;
	}
	if ((machslideAnim == 0) && ((landAnim == 0) && (shotgunAnim == 0)))
	{
	    if (move == 0)
	    {
	        if (idle < 400)
	            idle++;
	        if ((idle >= 300) && (floor(image_index) == (image_number - 1))) {
	            shotgunAnim = 0;
	            facehurt = 0;
	            idle = 0;
	            image_index = 0;
	        }
	        if ((idle >= 300) && ((sprite_index != spr_player_idlefrown) && ((sprite_index != spr_player_idledance) && ((sprite_index != spr_player_idlevomit) && ((sprite_index != spr_player_idlevomitblood) && ((sprite_index != spr_player_handgesture1) && ((sprite_index != spr_player_handgesture2) && ((sprite_index != spr_player_handgesture3) && (sprite_index != spr_player_handgesture4))))))))) {
	            randomize();
	            idleanim = random_range(0, 100);
	            if (idleanim < 16)
	                sprite_index = spr_player_idlefrown;
	            if ((idleanim < 32) && (idleanim >= 16))
	                sprite_index = spr_player_handgesture1;
	            if ((idleanim < 48) && (idleanim >= 32))
	                sprite_index = spr_player_handgesture2;
	            if ((idleanim < 64) && (idleanim >= 48))
	                sprite_index = spr_player_handgesture3;
	            if ((idleanim < 80) && (idleanim >= 64))
	                sprite_index = spr_player_handgesture4;
	            if ((idleanim < 98) && (idleanim >= 80))
	                sprite_index = spr_player_idledance;
	            if ((idleanim < 99) && (idleanim >= 98))
	                sprite_index = spr_player_idlevomit;
	            if (idleanim >= 99)
	                sprite_index = spr_player_idlevomitblood;
	            image_index = 0;
	        }
	        if (idle < 300)
	        {
	            if (facehurt == 0)
	            {
	                if (windingAnim < 50)
	                {
	                    start_running = 1
	                    movespeed = 0
	                    sprite_index = spr_player_idle
	                }
	                else
	                {
	                    idle = 0
	                    windingAnim--
	                    sprite_index = spr_player_winding
	                }
	            }
	            else if (facehurt == 1)
	            {
	                windingAnim = 0
	                if ((sprite_index != spr_player_facehurtup) && (sprite_index != spr_player_facehurt))
	                    sprite_index = spr_player_facehurtup
	                if ((floor(image_index) == (image_number - 1)) && (sprite_index == spr_player_facehurtup))
	                    sprite_index = spr_player_facehurt
	            }
	        }
	    }
	    if (move != 0)
	    {
	        machslideAnim = 0;
	        idle = 0;
	        facehurt = 0;
	        sprite_index = spr_player_move;
	    }
	    if (move != 0)
	        xscale = move;
	}
	if (landAnim == 1)
	{
	    if (shotgunAnim == 0)
	    {
	        if (move == 0)
	        {
	            movespeed = 0;
	            sprite_index = spr_player_land;
	            if (floor(image_index) == 5)
	                landAnim = 0;
	        }
	        if (move != 0)
	        {
	            sprite_index = spr_player_land2;
	            if (floor(image_index) == 4)
	            {
	                landAnim = 0;
	                sprite_index = spr_player_move;
	                image_index = 0;
	            }
	        }
	    }
	    if (shotgunAnim == 1)
	    {
	        sprite_index = spr_shotgun_land;
	        if (floor(image_index) == (image_number - 1))
	        {
	            landAnim = 0;
	            sprite_index = spr_player_move;
	            image_index = 0;
	        }
	    }
	}
	if (machslideAnim == 1)
	{
	    sprite_index = spr_player_machslideend;
	    if ((floor(image_index) == (image_number - 1)) && (sprite_index == spr_player_machslideend))
	        machslideAnim = 0;
	}
	if ((sprite_index == spr_player_shotgun) && (floor(image_index) == (image_number - 1)))
	    sprite_index = spr_shotgun_idle;
	if (landAnim == 0)
	{
	    if ((shotgunAnim == 1) && ((move == 0) && (sprite_index != spr_player_shotgun)))
	        sprite_index = spr_shotgun_idle;
	    else if ((shotgunAnim == 1) && (sprite_index != spr_player_shotgun))
	        sprite_index = spr_shotgun_walk;
	}
	if (scr_solid((x + sign(hsp)), y) && ((xscale == 1) && ((move == 1) && (!place_meeting((x + 1), y, obj_slopes)))))
	    movespeed = 0;
	if (scr_solid((x + sign(hsp)), y) && ((xscale == -1) && ((move == -1) && (!place_meeting((x - 1), y, obj_slopes)))))
	    movespeed = 0;
	jumpstop = 0;
	if (!grounded && (!key_jump))
	{
	    if (shotgunAnim == 0)
	        sprite_index = spr_player_fall;
	    else
	        sprite_index = spr_shotgun_fall;
	    jumpAnim = 0;
	    state = 44;
	    image_index = 0;
	}
	if (key_attack && grounded && ((!(scr_solid((x + 1), y) && ((xscale == 1) && (!place_meeting((x + xscale), y, obj_slopes))))) && (!(scr_solid((x - 1), y) && ((xscale == -1) && (!place_meeting((x + xscale), y, obj_slopes)))))))
	{
	    sprite_index = spr_player_mach1;
	    jumpAnim = 1;
	    state = 55;
	    movespeed = 0;
	    image_index = 0;
	}
	if (key_up && key_attack2)
	{
	    instance_create(x, y, obj_grabhitbox);
	    state = 44;
	    vsp = -6;
	    sprite_index = spr_player_grabmove;
	}
	if (key_jump && grounded && (!key_down))
	{
	    scr_sound(sound_jump);
	    if (move == 0)
	        sprite_index = spr_player_jump;
	    if (move != 0)
	        sprite_index = spr_player_secondjump1;
	    if (shotgunAnim == 1)
	        sprite_index = spr_shotgun_jump;
	    instance_create(x, y, obj_highjumpcloud2);
	    vsp = -11;
	    state = 44;
	    image_index = 0;
	    jumpAnim = 1;
	}
	if (grounded && ((input_buffer_jump < 8) && ((!key_down) && ((!key_attack) && (vsp > 0)))))
	{
	    scr_sound(sound_jump);
	    if (move == 0)
	        sprite_index = spr_player_jump;
	    if (move != 0)
	        sprite_index = spr_player_secondjump1;
	    if (shotgunAnim == 1)
	        sprite_index = spr_shotgun_jump;
	    instance_create(x, y, obj_highjumpcloud2);
	    stompAnim = 0;
	    vsp = -11;
	    state = 44;
	    jumpAnim = 1;
	    jumpstop = 0;
	    image_index = 0;
	    if (!place_meeting(x, y, obj_water2))
	        instance_create(x, y, obj_landcloud);
	    freefallstart = 0;
	}
	if ((key_down && grounded) || scr_solid(x, (y - 3)))
	{
	    state = 52;
	    landAnim = 0;
	    crouchAnim = 1;
	    image_index = 0;
	    idle = 0;
	}
	if (move != 0)
	{
	    if (movespeed < 6)
	        movespeed += 0.5;
	    else if (floor(movespeed) == 6)
	        movespeed = 6;
	}
	else
	    movespeed = 0;
	if (movespeed > 6)
	    movespeed -= 0.1;
	if (key_slap2 && ((shotgunAnim == 1) && ((global.ammo > 0) && (!instance_exists(obj_cutscene_upstairs)))))
	{
	    global.ammo -= 1;
	    instance_create(x, y, obj_shotgunbullet);
	    sprite_index = spr_player_shotgun;
	    state = 24;
	    image_index = 0;
	}
	momemtum = 1;
	if (move != 0)
	{
	    xscale = move;
	    if ((movespeed < 3) && (move != 0))
	        image_speed = 0.35;
	    else if ((movespeed > 3) && (movespeed < 6))
	        image_speed = 0.45;
	    else
	        image_speed = 0.6;
	}
	else
	    image_speed = 0.35;
	if (key_slap2 && (shotgunAnim == 0))
	{
	    if (slaphand == 1)
	        sprite_index = spr_player_slap1;
	    if (slaphand == -1)
	        sprite_index = spr_player_slap2;
	    state = 1;
	    image_index = 0;
	    slaphand *= -1;
	}
	if canShoot {
		if (key_shoot2 && (!key_up))
		{
		    sprite_index = spr_player_pistol;
		    state = 25;
		    image_index = 0;
		    shoot = 1;
		}
		else if (key_up && (key_shoot2 && (move == 0)))
		{
		    sprite_index = spr_player_shootup;
		    state = 25;
		    image_index = 0;
		    shoot = 1;
		}
		else if (key_up && (key_shoot2 && (move != 0)))
		{
		    sprite_index = spr_player_shootdiagonal;
		    state = 25;
		    image_index = 0;
		    shoot = 1;
		}
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
	if ((!instance_exists(obj_cloudeffect)) && grounded && ((move != 0) && ((floor(image_index) == 4) || (floor(image_index) == 10))))
	    instance_create(x, (y + 43), obj_cloudeffect);
	if ((!instance_exists(obj_cloudeffect)) && grounded && ((move != 0) && ((sprite_index == spr_player_downslopes) || (sprite_index == spr_player_upslopes))))
	    instance_create(x, (y + 43), obj_cloudeffect);
	scr_collideandmove();
}