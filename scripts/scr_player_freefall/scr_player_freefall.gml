function scr_player_freefall(){
	scr_getinput();
	hsp = 0;
	landAnim = 1;
	sprite_index = spr_player_bodyslamfall;
	if (!instance_exists(obj_freefallhitbox))
	    instance_create(x, y, obj_freefallhitbox);
	if (place_meeting(x, (y + 1), obj_collisionparent) && (!(input_buffer_jump < 8)))
	{
	    image_index = 0;
	    state = 63;
	    jumpAnim = 1;
	    jumpstop = 0;
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, view_xport[0], view_yport[0], (view_xport[0] + view_wport[0]), (view_yport[0] + view_hport[0]))
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
	    if (!(place_meeting(x, y, obj_water2)))
	        instance_create(x, y, obj_landcloud);
	    freefallstart = 0;
	}
	image_speed = 0.35;
	scr_collideandmove();
}