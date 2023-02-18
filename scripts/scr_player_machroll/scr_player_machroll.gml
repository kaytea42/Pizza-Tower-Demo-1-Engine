function scr_player_machroll() {
	scr_getinput();
	hsp = (xscale * movespeed);
	mach2 = 100;
	machslideAnim = 1;
	move = (key_right + key_left);
	movespeed = 12;
	if (((!key_down) && ((!scr_solid((x + 27), (y - 32))) && ((!scr_solid((x - 27), (y - 32))) && ((!scr_solid(x, (y - 32))) && (!scr_solid(x, (y - 16))))))) || (!grounded)) {
	    machhitAnim = 1;
	    state = 56;
	}
	if ((scr_solid((x + 1), y) && (xscale == 1)) && (!place_meeting((x + sign(hsp)), y, obj_slopes)))
	{
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
		sprite_index = spr_player_bump;
		
	}
	if ((scr_solid((x - 1), y) && (xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slopes)))
	{
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
	    hsp = 2.5;
	    vsp = -3;
	    mach2 = 0;
	    image_index = 0;
	    instance_create((x - 10), (y + 10), obj_bumpeffect);
		sprite_index = spr_player_bump;
		
	}
	if grounded && !scr_solid(x + xscale, y) sprite_index = spr_player_machroll;
	if (floor(image_index) == 0) flash = 1;
	else flash = 0;
	if ((!instance_exists(obj_cloudeffect)) && (place_meeting(x, (y + 1), obj_collisionparent) && (!place_meeting(x, (y + 1), obj_water)))) instance_create(x, (y + 43), obj_cloudeffect)
	image_speed = 0.8;
	scr_collideandmove();
}