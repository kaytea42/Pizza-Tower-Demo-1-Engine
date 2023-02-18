function scr_player_Sjump(){
	scr_getinput();
	hsp = 0;
	mach2 = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 0;
	machhitAnim = 0;
	if (sprite_index == spr_player_superjump)
	    vsp--;
	if (sprite_index == spr_player_supersidejump)
	{
	    if (a < 25)
	        a++;
	    hsp = (xscale * a);
	    vsp = 0;
	}
	if (scr_solid(x, (y - 1)) && ((!place_meeting(x, (y - 1), obj_destructibles)) && ((!place_meeting((x + sign(hsp)), y, obj_slopes)) && (!place_meeting((x - sign(hsp)), y, obj_slopes)))))
	{
	    scr_sound(sound_enemystomp);
	    a = 0;
	    if (sprite_index == spr_player_supersidejump)
	        sprite_index = spr_player_supersidejumpland;
	    if (sprite_index == spr_player_superjump)
	        sprite_index = spr_player_superjumpland;
	    with (obj_camera)
	    {
	        shake_mag = 10;
	        shake_mag_acc = (30 / room_speed);
	    }
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, view_xview[0], view_yview[0], (view_xview[0] + view_wview[0]), (view_yview[0] + view_hview[0]))
	        {
	            image_index = 0;
	            state = 79;
	            vsp = -7;
	            hsp = 0;
	        }
	    }
	    combo = 0;
	    image_index = 0;
	    state = 78;
	    machhitAnim = 0;
	}
	image_speed = 0.5;
	scr_collideandmovesuperjump();
}