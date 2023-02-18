function scr_player_timesup() {
	scr_getinput();
	if place_meeting(x, y, obj_timesup) {
	    state = 41;
	    alarm[10] = 5;
	    vsp = -8;
	    hsp = -4;
	}
	xscale = 1;
	sprite_index = spr_player_timesup;
	if (room == timesuproom) {
	    obj_player.x = 480;
	    obj_player.y = 270;
	}
	if (floor(image_index) == 9)
	    image_speed = 0;
}