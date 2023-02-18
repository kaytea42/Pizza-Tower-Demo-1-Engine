if dir == 0 hspeed = 1;
if dir == 1 hspeed = -1;
with obj_player {
	if place_meeting(x, y+1, other.id) {
		hsp += other.id.hspeed;
	}
}