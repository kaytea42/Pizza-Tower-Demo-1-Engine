if (obj_player.state != 59) {
	if global.cheesefollow == 0 {
	    global.cheesefollow = 1;
	    panic = 0;
		global.collect += 500;
	}
}