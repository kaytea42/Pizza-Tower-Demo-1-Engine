function scr_player_knightpep(){
	scr_getinput();
	if (sprite_index == spr_knightpep_walk || sprite_index == spr_knightpep_jump || sprite_index == spr_knightpep_fall || sprite_index == spr_knightpep_idle)
	{
	    move = (key_left + key_right);
	    hsp = (move * movespeed);
	}
	else if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    hsp = 0;
	    move = 0;
	}
	if ((sprite_index == spr_knightpep_idle || sprite_index == spr_knightpep_walk) && key_slap2)
	{
	    instance_create(x, y, obj_swordhitbox);
	    instance_create((x + ((-xscale) * 10)), y, obj_slidecloud);
	    sprite_index = spr_knightpep_attack;
	    image_index = 0;
	    state = 11;
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && xscale == 1 && move == -1)
	    movespeed = 0;
	else if (place_meeting(x, (y + 1), obj_collisionparent) && xscale == -1 && move == 1)
	    movespeed = 0;
	if (place_meeting(x, (y + 1), obj_collisionparent) && move != 0 && sprite_index == spr_knightpep_idle)
	    sprite_index = spr_knightpep_walk;
	else if (place_meeting(x, (y + 1), obj_collisionparent) && move == 0 && sprite_index == spr_knightpep_walk)
	    sprite_index = spr_knightpep_idle;
	if (key_jump && place_meeting(x, (y + 1), obj_collisionparent) && (sprite_index == spr_knightpep_idle || sprite_index == spr_knightpep_walk))
	{
	    image_index = 0;
	    sprite_index = spr_knightpep_jumpstart;
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_knightpep_jumpstart)
	{
	    vsp = -9;
	    if key_right
	        hsp = 4;
	    if (-key_left)
	        hsp = -4;
	    sprite_index = spr_knightpep_jump;
	}
	if ((floor(image_index) == (image_number - 1) && sprite_index == spr_knightpep_jump) || ((!(place_meeting(x, (y + 1), obj_collisionparent))) && sprite_index != spr_knightpep_jump))
	    sprite_index = spr_knightpep_fall;
	if (sprite_index == spr_knightpep_fall && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, view_xport[0], view_yport[0], (view_xport[0] + view_wport[0]), (view_yport[0] + view_hview[0]))
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
	    combo = 0;
	    bounce = 0;
	    image_index = 0;
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud);
	    freefallstart = 0;
	    momemtum = 0;
	    instance_create(x, y, obj_landcloud);
	    sprite_index = spr_knightpep_land;
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_knightpep_land)
	    sprite_index = spr_knightpep_idle;
	if (move != 0)
	    xscale = move;
	if (move != 0)
	{
	    if (movespeed < 5)
	        movespeed += 0.25;
	    else if (movespeed == 5)
	        movespeed = 5;
	}
	else
	    movespeed = 0;
	if (move != 0)
	{
	    if (movespeed < 1)
	        image_speed = 0.15;
	    else if (movespeed > 1 && movespeed < 4)
	        image_speed = 0.35;
	    else
	        image_speed = 0.6;
	}
	else
	    image_speed = 0.35;
	if (floor(image_index) == 9 && sprite_index == spr_knightpep_start)
	    instance_create(x, (y - 600), obj_thunder);
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_knightpep_thunder)
	    sprite_index = spr_knightpep_idle;
	if ((!(place_meeting((x + sign(hsp)), y, obj_collisionparent))) && (!(place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent))) && place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent) && place_meeting(x, (y + 1), obj_slopes))
	{
	    sprite_index = spr_knightpep_downslope;
	    state = 4;
	}
	if ((!instance_exists(obj_cloudeffect)) && (!(place_meeting(x, y, obj_water2))) && place_meeting(x, (y + 1), obj_collisionparent) && move != 0 && (floor(image_index) == 4 || floor(image_index) == 10))
	    instance_create(x, (y + 43), obj_cloudeffect);
	scr_collideandmove();
}