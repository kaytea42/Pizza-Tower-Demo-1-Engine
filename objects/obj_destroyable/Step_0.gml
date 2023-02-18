if (global.breaksound < 9)
	global.breaksound += 1;
if (place_meeting(x, (y - 40), obj_player) && (obj_player.state == 60))
{
    instance_destroy();
    tile_layer_delete_at(1, x, y);
    audio_sound_gain(sound_hit, 0.7, 0);
    if (!audio_is_playing(sound_hit))
        audio_play_sound(sound_hit, 1, false);
}
if ((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)) && ((obj_player.state == 56) || ((obj_player.state == 76) || (obj_player.state == 23))))
{
    if (obj_player.state == 56)
    {
        if (obj_player.machpunchAnim == 0)
        {
            obj_player.machpunchAnim = 1;
            obj_player.image_index = 0;
        }
    }
    instance_destroy();
}
if (place_meeting(x, (y - 1), obj_player) && ((obj_player.vsp > 0) && (obj_player.state == 20)))
{
    instance_destroy();
    obj_player.image_index = 0;
    obj_player.vsp = -7;
    obj_player.facestompAnim = 1;
}
if (place_meeting(x, (y - 1), obj_player) && ((obj_player.vsp > 0) && ((obj_player.state == 60) || ((obj_player.state == 29) || ((obj_player.state == 28) || (obj_player.state == 10))))))
    instance_destroy();
if ((place_meeting(x, (y + 40), obj_player) || ((place_meeting((x - 1), y, obj_player) && (obj_player.xscale == 1)) || (place_meeting((x + 1), y, obj_player) && (obj_player.xscale == -1)))) && (obj_player.state == 49))
    instance_destroy();
if place_meeting(x, (y + 1), obj_player)
{
    with (obj_player)
    {
        if (key_jump && (state == 52))
        {
            instance_destroy(other.id);
            vsp = 0;
            jumpstop = 1;
        }
    }
}
if (place_meeting(x, (y + 1), obj_player) && (obj_player.vsp <= 0.5))
{
    with (obj_player)
    {
        if (!grounded)
        {
            instance_destroy(other.id);
            vsp = 0;
            jumpstop = 1;
        }
    }
}