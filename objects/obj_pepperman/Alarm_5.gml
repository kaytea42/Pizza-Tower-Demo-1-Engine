instance_destroy();
instance_create(x, y, obj_bossdefeatflash);
if (room == AT_roomboss)
{
    instance_destroy(obj_wave);
    obj_tv.message = "VICTORY!!!";
    obj_tv.showtext = 1;
    obj_tv.alarm[0] = 260;
    obj_tv.tvsprite = spr_tvclap;
    obj_tv.image_speed = 0.1;
    obj_player.image_index = 0;
    obj_player.x = 704;
    obj_player.hsp = 0;
    obj_player.y = 562;
    obj_player.sprite_index = spr_player_levelcomplete;
    obj_player.state = 40;
    instance_create(1230, 562, obj_noise_normalT1);
}