if (global.breaksound < 9)
    global.breaksound += 1;
if place_meeting(x, (y - 1), obj_player)
{
    with (obj_player)
    {
        if (!(place_meeting(x, (y + 1), obj_wall)))
        {
            movespeed = 0;
            mach2 = 0;
            state = 44;
            sprite_index = spr_player_fall;
            instance_destroy(obj_tutorialtrap);
			var lay_id = layer_get_id("trapscreen1");
			var back_id = layer_background_get_id(lay_id);
			layer_background_sprite(back_id, trapscreen2);
        }
    }
}
if (place_meeting(x, (y - 40), obj_player) && obj_player.state == 60)
{
    instance_destroy();
    audio_sound_gain(sfx_break, 0.7, 0);
    if (!audio_is_playing(sfx_break))
        audio_play_sound(sfx_break, 1, false);
}
if ((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)) && (obj_player.state == 76 || obj_player.state == 23))
    instance_destroy();
if (place_meeting(x, (y - 1), obj_player) && obj_player.vsp > 0 && obj_player.state == 20)
{
    instance_destroy();
    obj_player.image_index = 0;
    obj_player.vsp = -7;
    obj_player.facestompAnim = 1;
}
if (place_meeting(x, (y - 1), obj_player) && obj_player.vsp > 0 && (obj_player.state == 60 || obj_player.state == 29 || obj_player.state == 28 || obj_player.state == 10))
    instance_destroy();
if ((place_meeting(x, (y + 40), obj_player) || (place_meeting((x - 1), y, obj_player) && obj_player.xscale == 1) || (place_meeting((x + 1), y, obj_player) && obj_player.xscale == -1)) && obj_player.state == 49)
    instance_destroy();
if place_meeting(x, (y + 1), obj_player)
{
    with (obj_player)
    {
        if (key_jump && state == 52)
        {
            instance_destroy(other.id);
            vsp = 0;
            jumpstop = 1;
        }
    }
}
if (place_meeting(x, (y + 1), obj_player) && obj_player.vsp <= 0.5)
{
    with (obj_player)
    {
        if (!(place_meeting(x, (y + 1), obj_collisionparent)))
        {
            instance_destroy(other.id);
            vsp = 0;
            jumpstop = 1;
        }
    }
}