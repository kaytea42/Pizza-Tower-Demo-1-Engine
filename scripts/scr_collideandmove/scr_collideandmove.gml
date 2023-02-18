function scr_collideandmove(){
	grounded = false;

	var vy = vsp;

	repeat abs(vy)
	{
	    if !scr_solid_player(x, y + sign(vsp))
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
	    if scr_solid_player(x + sign(hsp), y)
		&& !scr_solid_player(x + sign(hsp), y - 1)
			y--;
	
	    if !scr_solid_player((x + sign(hsp)), y)
		&& !scr_solid_player(x + sign(hsp), y + 1)
		&& scr_solid_player(x + sign(hsp), y + 2)
	        y++;
	
	    if !scr_solid_player(x + sign(hsp), y)
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

	grounded |= scr_solid(x, y + 1);
	grounded |= !place_meeting(x, y, obj_platform) && place_meeting(x, y + 1, obj_platform);
	
	//var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3;
	//_temp_local_var_1 = abs(vsp)
	//_temp_local_var_2 = _temp_local_var_1
	//if (_temp_local_var_1 <= 0)
	//{
	//}
	//else
	//{
	//    while (true)
	//    {
	//        if (! place_meeting(x, (y + sign(vsp)), obj_collisionparent))
	//        {
	//            y = (y + sign(vsp))
	//            _temp_local_var_2 = (_temp_local_var_2 - 1)
	//            if _temp_local_var_2
	//                continue
	//        }
	//        else
	//        {
	//            vsp = 0
	//            break
	//        }
	//        break
	//    }
	//}
	//_temp_local_var_3 = abs(hsp)
	//_temp_local_var_2 = _temp_local_var_3
	//if (_temp_local_var_3 <= 0)
	//{
	//}
	//else
	//{
	//    while (true)
	//    {
	//        if (place_meeting((x + sign(hsp)), y, obj_collisionparent) && (place_meeting((x + sign(hsp)), (y - 1), obj_collisionparent) && (! place_meeting((x + sign(hsp)), (y - 2), obj_collisionparent))))
	//            y = (y - 2)
	//        else if (place_meeting((x + sign(hsp)), y, obj_collisionparent) && (! place_meeting((x + sign(hsp)), (y - 1), obj_collisionparent)))
	//            y = (y - 1)
	//        if ((! place_meeting((x + sign(hsp)), y, obj_collisionparent)) && ((! place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent)) && ((! place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent)) && place_meeting((x + sign(hsp)), (y + 3), obj_collisionparent))))
	//            y = (y + 2)
	//        else if ((! place_meeting((x + sign(hsp)), y, obj_collisionparent)) && ((! place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent)) && place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent)))
	//            y = (y + 1)
	//        if (! place_meeting((x + sign(hsp)), y, obj_collisionparent))
	//        {
	//            x = (x + sign(hsp))
	//            _temp_local_var_2 = (_temp_local_var_2 - 1)
	//            if _temp_local_var_2
	//                continue
	//        }
	//        else
	//        {
	//            hsp = 0;
	//            break;
	//        }
	//        break
	//    }
	//}
	//if (vsp < 20)
	//    vsp = (vsp + grav);
}