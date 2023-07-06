if (stunned == 1 && stunhp == 0 && alarm[1] > 40 && slapped == 0 && sprite_index == stunspr)
{
    stunhp = 5;
    x = (obj_player.x + (obj_player.xscale * 20));
    charging = 0;
    chargingdown = 0;
    state = 32;
    movespeed = 0;
    slapped = 1;
    instance_create((x + (obj_player.xscale * 40)), y, obj_punchdust);
    obj_player.state = 32;
    instance_destroy(other.id);
}
if (stunhp == 0 && (!((stunned == 1 && alarm[1] > 40))) && slapped == 0 && (sprite_index == normalspr || sprite_index == stunspr))
{
    scr_sound(sound_enemystomp);
    instance_create(x, y, obj_spikehurteffect);
    other.image_xscale = image_xscale;
    slapped = 1;
    flash = 1;
    instance_create(x, y, obj_bumpeffect);
    alarm[1] = 100;
    if (other.x != x)
        image_xscale = (-(sign((x - other.x))));
    vsp = -5;
    hsp = ((-image_xscale) * 3);
    stunned = 1;
    sprite_index = stunspr;
}
else if (slapped == 0 && (sprite_index == normalspr || sprite_index == stunspr))
{
    scr_sound(sound_enemyslap);
    if (stunhp > 0)
        stunhp -= 1;
    if (slapped == 0)
        instance_create(x, y, obj_slapstar);
    with (instance_create(x, y, obj_spikehurteffect))
        other.image_xscale = image_xscale;
    slapped = 1;
    stunned = 1;
    sprite_index = stunspr;
    alarm[1] = 40;
    if (other.x != x)
        image_xscale = (-(sign((x - other.x))));
    vsp = -3;
    hsp = ((-image_xscale) * 2);
}