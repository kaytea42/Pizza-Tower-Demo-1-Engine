function scr_player_portal() {
	visible = false;
	if instance_exists(obj_portalentrance)
	{
	    if (floor(obj_portalentrance.image_index) == 12)
	    {
	        state = 60;
	        visible = true;
	    }
	}
	mach2 = 0;
}