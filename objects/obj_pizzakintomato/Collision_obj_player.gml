if (obj_player.state != 59) {
	if global.tomatofollow == 0 {
	    global.tomatofollow = 1;
	    panic = 0;
		global.collect += 500;
	}
}