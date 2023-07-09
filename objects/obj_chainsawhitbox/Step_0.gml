image_xscale = obj_player.xscale;
x = obj_player.x;
y = obj_player.y;
bumpeffect = 0;
if (obj_player.state != 19)
    instance_destroy();
if (floor(image_index) == 0)
    mask_index = spr_chainsawhitbox;
else
    mask_index = spr_masknull;