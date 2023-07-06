if (sprite_index == spr_noise_button && floor(image_index) == (image_number - 1))
{
    hspeed = 3;
    image_xscale = 1;
    sprite_index = spr_noise_walk;
}
if (floor(image_index) == 86)
{
    global.panic = 1;
    obj_player.image_index = 0;
    obj_player.sprite_index = spr_player_bossintro;
}
scr_collideandmove();