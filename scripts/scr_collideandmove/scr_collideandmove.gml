function scr_collideandmove() {
	var vy = vsp;

	repeat abs(vy)
	{
	    if !place_meeting(x, y + sign(vsp), obj_collisionparent)
	    {
	        y += sign(vsp);
	        vy -= 1;
		
	        if vy
	            continue;
	    }
	    else
		{
	        vsp = 0;
			break;
		}
	}

	var vx = abs(hsp);
	repeat abs(vx)
	{
	    if place_meeting(x + sign(hsp), y, obj_collisionparent)
		&& !place_meeting(x + sign(hsp), y - 1, obj_collisionparent)
			y--;
	
	    if !place_meeting((x + sign(hsp)), y, obj_collisionparent)
		&& !place_meeting(x + sign(hsp), y + 1, obj_collisionparent)
		&& place_meeting(x + sign(hsp), y + 2, obj_collisionparent)
	        y++;
	
	    if !place_meeting(x + sign(hsp), y, obj_collisionparent)
	    {
	        x += sign(hsp);
	        vx -= 1;
		
	        if vx
	            continue;
	    }
	    else
		{
	        hsp = 0;
			break;
		}
	}

	if vsp < 20 // gravity cap
	    vsp += grav;
}