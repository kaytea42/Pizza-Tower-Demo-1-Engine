if (other.image_index == 0)
{
    instance_create(x, y, obj_bangeffect);
    sprite_index = spr_player_machfreefall;
    drop = 1;
    vsp = -20;
    hsp = 8;
    other.image_index = 1;
}