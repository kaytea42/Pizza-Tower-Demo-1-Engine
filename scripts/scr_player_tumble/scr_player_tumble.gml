function scr_player_tumble(){
	scr_getinput();
	hsp = (xscale * movespeed);
	if (!key_jump2)
	    vsp = 10;
	if (sprite_index == spr_player_downslopes)
	    movespeed = 3;
	else
	    movespeed = 8;
	if ((sprite_index == spr_player_downslopes) && (floor(image_index) == (image_number - 1)))
	    sprite_index = spr_player_machroll;
	if ((place_meeting((x + 1), y, obj_bumpable) && (xscale == 1)) && (!place_meeting((x + sign(hsp)), y, obj_slopes)))
	{
	    with (obj_camera)
	    {
	        shake_mag = 20
	        shake_mag_acc = (40 / room_speed)
	    }
	    hsp = 0
	    image_speed = 0.35
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, view_xport[0], view_yport[0], (view_xport[0] + view_wport[0]), (view_yport[0] + view_hport[0]))
	        {
	            stun = 1
	            alarm[0] = 200
	            ministun = 0
	            vsp = -5
	            hsp = 0
	            image_xscale *= -1
	        }
	    }
	    flash = 0
	    combo = 0
	    state = 58
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
		sprite_index = spr_player_bump;
		
	}
	if ((scr_solid((x - 1), y) && (xscale == -1)) && (!place_meeting((x + sign(hsp)), y, obj_slopes)))
	{
	    with (obj_camera)
	    {
	        shake_mag = 20
	        shake_mag_acc = (40 / room_speed)
	    }
	    hsp = 0
	    image_speed = 0.35
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, view_xport[0], view_yport[0], (view_xport[0] + view_wport[0]), (view_yport[0] + view_hport[0]))
	        {
	            stun = 1
	            alarm[0] = 200
	            ministun = 0
	            vsp = -5
	            hsp = 0
	            image_xscale *= -1
	        }
	    }
	    flash = 0
	    combo = 0
	    state = 58
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
		sprite_index = spr_player_bump;
		
	}
	if key_jump
	    input_buffer_jump = 0;
	if ((!key_jump2) && ((jumpstop == 0) && ((vsp < 0.5) && (stompAnim == 0))))
	{
	    vsp /= 1;
	    jumpstop = 1;
	}
	if grounded or place_meeting(x, (y + 1), obj_slopes) || place_meeting(x, (y + 1), obj_destructibles) && (vsp > 0)
	    jumpstop = 0;
	if ((input_buffer_jump < 8) && (grounded or place_meeting(x, (y + 1), obj_slopes) || place_meeting(x, (y + 1), obj_destructibles) && (hsp != 0)))
	    vsp = -9;
	image_speed = 0.35;
	scr_collideandmove();
}