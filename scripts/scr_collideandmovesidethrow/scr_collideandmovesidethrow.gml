function scr_collideandmovesidethrow() {
	var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3;
	_temp_local_var_1 = abs(vsp)
	_temp_local_var_2 = _temp_local_var_1
	if (_temp_local_var_1 <= 0)
	{
	}
	else
	{
	    while (true)
	    {
	        if (! place_meeting(x, (y + sign(vsp)), obj_enemiesbumpable))
	        {
	            y = (y + sign(vsp))
	            _temp_local_var_2 = (_temp_local_var_2 - 1)
	            if _temp_local_var_2
	                continue
	        }
	        else
	        {
	            vsp = 0
	            break
	        }
	        break
	    }
	}
	_temp_local_var_3 = abs(hsp)
	_temp_local_var_2 = _temp_local_var_3
	if (_temp_local_var_3 <= 0)
	{
	}
	else
	{
	    while (true)
	    {
	        if (place_meeting((x + sign(hsp)), y, obj_enemiesbumpable) && (place_meeting((x + sign(hsp)), (y - 1), obj_enemiesbumpable) && (! place_meeting((x + sign(hsp)), (y - 2), obj_enemiesbumpable))))
	            y = (y - 2)
	        else if (place_meeting((x + sign(hsp)), y, obj_enemiesbumpable) && (! place_meeting((x + sign(hsp)), (y - 1), obj_enemiesbumpable)))
	            y = (y - 1)
	        if (((! place_meeting((x + sign(hsp)), y, obj_enemiesbumpable)) && ((! place_meeting((x + sign(hsp)), (y + 1), obj_enemiesbumpable)) && ((! place_meeting((x + sign(hsp)), (y + 2), obj_enemiesbumpable)) && place_meeting((x + sign(hsp)), (y + 3), obj_enemiesbumpable)))) && (straightthrow == 0))
	            y = (y + 2)
	        else if (((! place_meeting((x + sign(hsp)), y, obj_enemiesbumpable)) && ((! place_meeting((x + sign(hsp)), (y + 1), obj_enemiesbumpable)) && place_meeting((x + sign(hsp)), (y + 2), obj_enemiesbumpable))) && (straightthrow == 0))
	            y = (y + 1)
	        if (! place_meeting((x + sign(hsp)), y, obj_enemiesbumpable))
	        {
	            x = (x + sign(hsp))
	            _temp_local_var_2 = (_temp_local_var_2 - 1)
	            if _temp_local_var_2
	                continue
	        }
	        else
	        {
	            hsp = 0
	            break
	        }
	        break
	    }
	}
	if (vsp < 20)
	    vsp += grav






}
