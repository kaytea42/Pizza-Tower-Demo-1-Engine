if ((!instance_exists(obj_slaphitbox)) && (!instance_exists(obj_shotgunbullet)))
    slapped = 0;
if (hp == 10)
    maxspeed = 12;
if (hp == 8)
    maxspeed = 14;
if (hp == 6)
    maxspeed = 16;
if (hp == 4)
    maxspeed = 18;
if (hp == 2)
    maxspeed = 20;
image_speed = 0.35;
if ((sprite_index == chargespr || sprite_index == hurtspr) && flashing == 0)
{
    alarm[6] = 1;
    flashing = 1;
}
if (charging == 0 && stunned == 0)
{
    if (obj_player.x != x)
        image_xscale = sign((obj_player.x - x));
    hsp = 0;
    sprite_index = normalspr;
}
if (stunned == 1 && thrown == 0)
{
    if (hsp < 0)
        hsp += 0.1;
    else if (hsp > 0)
        hsp -= 0.1;
}
if (charging == 1 && stunned == 0)
{
    if (!instance_exists(obj_peppermancharge))
        instance_create(x, y, obj_peppermancharge);
    hsp = (image_xscale * movespeed);
    if (!(place_meeting((x + 50), (y + 3), obj_wall)))
        image_xscale = -1;
    if (!(place_meeting((x - 50), (y + 3), obj_wall)))
        image_xscale = 1;
    if (chargingdown == 0 && stunned == 0)
    {
        if (movespeed < maxspeed)
            movespeed += 0.1;
        if (movespeed >= maxspeed)
            chargingdown = 1;
    }
    if (chargingdown == 1 && stunned == 0)
    {
        movespeed -= 0.25;
        if (movespeed <= 0)
        {
            alarm[1] = 100;
            chargingdown = 0;
            charging = 0;
        }
    }
    sprite_index = chargespr;
}
if (charging == 1 && movespeed > 6)
    image_speed = 0.6;
else
    image_speed = 0.35;
if (floor(image_index) == 0 && charging == 1 && place_meeting(x, (y + 1), obj_collisionparent))
    instance_create(x, (y + 90), obj_cloudeffect);
if (obj_player.state == 32 || obj_player.state == 29 || (!(place_meeting(x, (y + 1), obj_collisionparent))))
{
    stunned = 1;
    movespeed = 0;
    charging = 0;
    chargingdown = 0;
    alarm[1] = 100;
}
if (hp <= 0 && dead == 0)
{
    scr_sleep(250);
    dead = 1;
    alarm[1] = -1;
    alarm[4] = 5;
    alarm[5] = 100;
}
if (place_meeting(x, (y + 1), obj_collisionparent) && thrown == 1)
{
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    instance_create(x, y, obj_slapstar);
    scr_sound(sound_combo4);
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
}
if (thrown == 0 && (obj_player.state == 14 || obj_player.state == 32 || obj_player.state == 27 || obj_player.state == 33 || obj_player.state == 35 || obj_player.state == 29 || obj_player.state == 36 || obj_player.state == 34))
{
    charging = 0;
    chargingdown = 0;
    movespeed = 0;
    image_xscale = (-obj_player.xscale);
    if place_meeting(x, y, obj_player)
    {
        if (obj_player.state == 33 && floor(obj_player.image_index) == 2)
        {
            instance_create((x + (obj_player.xscale * 30)), y, obj_bumpeffect);
            thrown = 1;
            hsp = ((-image_xscale) * 15);
            vsp = -6;
        }
        if (obj_player.state == 34 && floor(obj_player.image_index) == 2)
        {
            instance_create((x + ((-obj_player.xscale) * 50)), y, obj_bumpeffect);
            thrown = 1;
            image_xscale *= -1;
            hsp = ((-image_xscale) * 10);
            vsp = -6;
        }
        if (obj_player.state == 36 && floor(obj_player.image_index) == 2)
        {
            instance_create(x, (y + 20), obj_bumpeffect);
            thrown = 1;
            hsp = ((-image_xscale) * 5);
            vsp = -10;
        }
        if (obj_player.state == 27 && floor(obj_player.image_index) == 2)
        {
            thrown = 1;
            hsp = ((-image_xscale) * 7);
            vsp = -10;
        }
        if (obj_player.state == 35 && floor(obj_player.image_index) == 2)
        {
            instance_create((x + ((-obj_player.xscale) * 15)), (y - 50), obj_bumpeffect);
            thrown = 1;
            hsp = ((-image_xscale) * 2);
            state = 89;
            vsp = -20;
        }
    }
    if (obj_player.state == 29)
    {
        if (floor(obj_player.image_index) == 0)
        {
            depth = 0;
            x = (obj_player.x + (obj_player.xscale * 20));
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 1)
        {
            depth = 0;
            x = (obj_player.x + (obj_player.xscale * 10));
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 2)
        {
            depth = 0;
            x = obj_player.x;
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 3)
        {
            depth = 0;
            x = (obj_player.x + (obj_player.xscale * -10));
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 4)
        {
            depth = 0;
            x = (obj_player.x + (obj_player.xscale * -20));
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 5)
        {
            depth = -7;
            x = (obj_player.x + (obj_player.xscale * -10));
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 6)
        {
            depth = -7;
            x = obj_player.x;
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 7)
        {
            depth = -7;
            x = (obj_player.x + (obj_player.xscale * 10));
            y = (obj_player.y - 70);
        }
        if (obj_player.sprite_index == spr_player_piledriverland)
        {
            thrown = 1;
            hsp = ((-image_xscale) * 4);
            vsp = -5;
        }
    }
    image_xscale = (-obj_player.xscale);
    stunned = 1;
}
if (flash == 1 && alarm[3] <= 0)
    alarm[3] = (0.01 * room_speed);
if (hp > 6)
{
    normalspr = spr_pepperman;
    hurtspr = spr_pepperman_hurt;
    chargespr = spr_pepperman_charge;
    stunspr = spr_pepperman_stun;
}
if (hp <= 6 && hp > 3)
{
    normalspr = spr_peppermanmid;
    hurtspr = spr_peppermanmid_hurt;
    chargespr = spr_peppermanmid_charge;
    stunspr = spr_peppermanmid_stun;
}
else if (hp <= 3)
{
    normalspr = spr_peppermanlow;
    hurtspr = spr_peppermanlow_hurt;
    chargespr = spr_peppermanlow_charge;
    stunspr = spr_peppermanlow_stun;
}
scr_collideandmoveonlywall();