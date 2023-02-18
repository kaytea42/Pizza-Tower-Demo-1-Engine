if (obj_player.state != 59) {
	if global.pineapplefollow == 0 {
	    global.pineapplefollow = 1;
	    panic = 0;
		global.collect += 500;
	}
}