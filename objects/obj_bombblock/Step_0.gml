if (obj_player.state == 13 && (place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player) || place_meeting(x, (y - 1), obj_player) || place_meeting(x, (y + 1), obj_player)))
{
    with (obj_player)
    {
        instance_create(x, y, obj_bombexplosion);
        hurted = 1;
        vsp = -4;
        image_index = 0;
        sprite_index = spr_bombpep_end;
        state = 13;
        bombpeptimer = 0;
    }
}