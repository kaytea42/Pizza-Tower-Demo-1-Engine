if ((obj_player.state == 0) && (obj_player.key_up && ((global.key_inv == 1) && place_meeting(x, y, obj_player))))
{
    scr_sound(sfx_land);
    obj_player.state = 50;
    obj_player.image_index = 0;
    image_index = 0;
    sprite_index = spr_doorkeyopen;
    image_speed = 0.35;
    instance_create((x + 50), (y + 50), obj_lock);
    global.key_inv = 0;
}
if (floor(image_index) == 2)
    image_speed = 0;
if ((floor(obj_player.image_index) == (obj_player.image_number - 1)) && (obj_player.state == 50))
{
    with (obj_player)
    {
        player_y = other.target_y;
        player_x = other.target_x;
        targetRoom = other.targetRoom;
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout);
        instance_destroy(other.id);
    }
}

