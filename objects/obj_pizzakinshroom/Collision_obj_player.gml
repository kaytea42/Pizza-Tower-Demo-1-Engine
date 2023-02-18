if (obj_player.state != 59) {
	if global.shroomfollow == 0 {
	    global.shroomfollow = 1;
	    panic = 0;
		global.collect += 500;
	}
}