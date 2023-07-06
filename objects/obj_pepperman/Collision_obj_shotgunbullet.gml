if (slapped == 0)
{
    obj_camera.shake_mag = 3;
    obj_camera.shake_mag_acc = (4 / room_speed);
    thrown = 0;
    hp -= 1;
    flash = 1;
    charging = 0;
    stunned = 1;
    movespeed = 0;
    if (obj_player.x != x)
        image_xscale = sign((obj_player.x - x));
    hsp = (sign((x - obj_player.x)) * 6);
    vsp = -8;
    if (hp > 6)
        sprite_index = spr_pepperman_hurt;
    if (hp <= 6 && hp > 3)
        sprite_index = spr_peppermanmid_hurt;
    else if (hp <= 3)
        sprite_index = spr_peppermanlow_hurt;
    slapped = 1;
}