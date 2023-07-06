if (inv_frame == 0 && obj_player.state != 10 && obj_player.state != 11 && obj_player.state != 4 && obj_player.state != 59)
{
    instance_destroy();
    global.key_inv = 1;
    obj_player.key_particles = 1;
    obj_player.alarm[7] = 30;
}
if (global.keyget == 0 && obj_player.state != 10 && obj_player.state != 11 && obj_player.state != 4)
{
    obj_player.state = 42;
    obj_player.image_index = 0;
    global.keyget = 1;
}