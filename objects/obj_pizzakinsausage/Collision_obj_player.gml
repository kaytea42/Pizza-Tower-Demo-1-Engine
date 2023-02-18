if (obj_player.state != 59) {
	if global.sausagefollow == 0 {
	    global.sausagefollow = 1;
	    panic = 0;
		global.collect += 500;
	}
}