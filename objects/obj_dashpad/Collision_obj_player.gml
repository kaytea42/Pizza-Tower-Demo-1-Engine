with(obj_player)
{
    if (place_meeting(x, (y + 1), obj_collisionparent) && ((state == 55) || (state == 56)))
    {
        xscale = other.image_xscale;
        mach2 = 100;
        audio_play_sound(sfx_mach3, 1, 0);
        machhitAnim = 0;
        state = 76;
        flash = 1;
        sprite_index = spr_player_mach4;
        instance_create(x, y, obj_jumpdust);
        instance_create(x, y, obj_mach3effect1);
        instance_create(x, y, obj_mach3effect2);
        movespeed = 6;
    }
}