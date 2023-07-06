if (obj_player.y < y && obj_player.state == 44)
{
    scr_sound(sound_enemyslap);
    with (obj_player)
    {
        if key_jump2
        {
            instance_create(x, (y + 50), obj_stompeffect);
            stompAnim = 1;
            vsp = -14;
            sprite_index = spr_player_stompprep;
        }
        else
        {
            instance_create(x, (y + 50), obj_stompeffect);
            stompAnim = 1;
            vsp = -9;
            sprite_index = spr_player_stompprep;
        }
    }
}
if (obj_player.state == 56)
{
    instance_create(obj_player.x, obj_player.y, obj_bumpeffect);
    movespeed = 0;
    obj_player.state = 43;
    obj_player.image_index = 0;
    if (obj_player.x != x)
        image_xscale = sign((obj_player.x - x));
    hsp = (sign((x - obj_player.x)) * 4);
    vsp = -3;
    if (sprite_index != hurtspr)
    {
        sprite_index = stunspr;
        charging = 0;
        stunned = 1;
        alarm[1] = 100;
    }
}
if (obj_player.state == 76)
{
    scr_sound(sound_combo4);
    obj_camera.shake_mag = 3;
    obj_camera.shake_mag_acc = (4 / room_speed);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    hp -= 1;
    flash = 1;
    charging = 0;
    stunned = 1;
    movespeed = 0;
    obj_player.state = 43;
    obj_player.image_index = 0;
    if (obj_player.x != x)
        image_xscale = sign((obj_player.x - x));
    hsp = (sign((x - obj_player.x)) * 6);
    vsp = -8;
    if (hp == 10)
    {
        alarm[1] = 100;
        alarm[0] = 100;
    }
    if (hp == 9)
    {
        alarm[1] = 90;
        alarm[0] = 90;
    }
    if (hp == 8)
    {
        alarm[1] = 80;
        alarm[0] = 80;
    }
    if (hp == 7)
    {
        alarm[1] = 70;
        alarm[0] = 70;
    }
    if (hp == 6)
    {
        alarm[1] = 60;
        alarm[0] = 60;
    }
    if (hp == 5)
    {
        alarm[1] = 50;
        alarm[0] = 50;
    }
    if (hp == 4)
    {
        alarm[1] = 40;
        alarm[0] = 40;
    }
    if (hp == 3)
    {
        alarm[1] = 30;
        alarm[0] = 30;
    }
    if (hp == 2)
    {
        alarm[1] = 30;
        alarm[0] = 30;
    }
    if (hp == 1)
    {
        alarm[1] = 30;
        alarm[0] = 30;
    }
    if (hp > 6)
        sprite_index = spr_pepperman_hurt;
    if (hp <= 6 && hp > 3)
        sprite_index = spr_peppermanmid_hurt;
    else if (hp <= 3)
        sprite_index = spr_peppermanlow_hurt;
}
with (obj_player)
{
    if (state != 43 && state != 59 && (!(y < other.y)) && state != 32 && state != 29 && grabbing == 0 && other.stunned == 0)
    {
        if (x != other.x)
            xscale = (-(sign((x - other.x))));
        hsp = ((-xscale) * 4);
        vsp = -4;
        image_index = 0;
        state = 58;
    }
}