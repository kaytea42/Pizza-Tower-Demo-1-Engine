function scr_player_slam(){
	scr_getinput();
	if (windingAnim < 200)
	    windingAnim += 5;
	move = (key_left + key_right);
	if (!(place_meeting(x, (y + 1), obj_collisionparent)))
	    hsp = (move * movespeed);
	if ((place_meeting((x + 1), y, obj_bumpable) && xscale == 1) || (place_meeting((x - 1), y, obj_bumpable) && xscale == -1))
	    movespeed = 0;
	if (move == 0)
	    movespeed = 0;
	if (move != 0 && movespeed < 4)
	    movespeed += 0.5;
	if (xscale == 1 && move == -1)
	    movespeed = 0;
	if (xscale == -1 && move == 1)
	    movespeed = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	machslideAnim = 1;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	if (floor(image_index) == 8)
	    state = 0;
	if (move != 0)
	    xscale = move;
	if (floor(image_index) == 3 && (!(place_meeting(x, (y + 1), obj_collisionparent))))
	    image_speed = 0;
	else if (place_meeting(x, (y + 1), obj_collisionparent) && slamming == 0 && vsp > 0)
	{
	    slamming = 1;
	    hsp = 0;
	    image_speed = 0.35;
	    with (obj_camera)
	    {
	        shake_mag = 10;
	        shake_mag_acc = (30 / room_speed);
	    }
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, view_xport[0], view_yport[0], (view_xport[0] + view_wport[0]), (view_yport[0] + view_hview[0]))
	        {
	            vsp = -7;
	            hsp = 0;
	        }
	    }
	}
	sprite_index = spr_player_slam;
	scr_collideandmove();
}