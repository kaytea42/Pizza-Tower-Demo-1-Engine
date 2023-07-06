function scr_player_shotgun(){
	scr_getinput();
	hsp = (xscale * movespeed);
	dir = xscale;
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    if (movespeed > 0)
	        movespeed -= 0.2;
	}
	if place_meeting((x + hsp), y, obj_collisionparent)
	    movespeed = 0;
	landAnim = 0;
	momemtum = 1;
	if (floor(image_index) == (image_number - 1))
	{
	    shotgunAnim = 1;
	    if place_meeting(x, (y + 1), obj_collisionparent)
	    {
	        sprite_index = spr_shotgun_idle;
	        state = 0;
	    }
	    else
	    {
	        sprite_index = spr_shotgun_fall;
	        state = 44;
	    }
	}
	scr_collideandmove();
	image_speed = 0.4;
	if ((!instance_exists(obj_slidecloud)) && (place_meeting(x, (y + 1), obj_collisionparent) && (movespeed > 4)))
	    instance_create(x, y, obj_slidecloud);
}