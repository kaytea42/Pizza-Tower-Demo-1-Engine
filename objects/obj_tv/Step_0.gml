if (room == rank_room || room == timesuproom)
    visible = false;
if (room == AT_room1)
    visible = true;
if (showtext == 1) {
    xi = (500 + random_range(1, -1));
    if (yi > 500) yi -= 5;
}
if (showtext == 0) {
    xi = (500 + random_range(1, -1));
    if (yi < 600) yi += 1;
}
if (!((obj_player.state == 10 && obj_player.state == 11 && obj_player.state == 4)))
    once = 0;