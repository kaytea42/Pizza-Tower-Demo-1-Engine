if ((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)) && ((obj_player.state == 76) || ((obj_player.state == 4) || ((obj_player.state == 23) || ((obj_player.state == 10) && (obj_player.momemtum == 1))))))
    instance_destroy();
if (place_meeting(x, (y - 1), obj_player) && ((obj_player.state == 10) || (obj_player.state == 63)))
{
    instance_destroy();
    tile_layer_delete_at(1, x, y);
}
if ((place_meeting(x, (y + 40), obj_player) || ((place_meeting((x - 1), y, obj_player) && (obj_player.xscale == 1)) || (place_meeting((x + 1), y, obj_player) && (obj_player.xscale == -1)))) && (obj_player.state == 49))
{
    instance_destroy();
    tile_layer_delete_at(1, x, y);
}