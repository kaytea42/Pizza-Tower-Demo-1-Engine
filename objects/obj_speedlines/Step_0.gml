image_xscale = obj_player.xscale;
x = obj_player.x;
y = obj_player.y;
if (obj_player.movespeed <= 7)
    instance_destroy();
if (obj_player.sprite_index == spr_player_downslopes && obj_player.xscale == -1)
    image_angle = 40;
else if (obj_player.sprite_index == spr_player_downslopes && obj_player.xscale == 1)
    image_angle = -40;
else
    image_angle = 0;
with (obj_player)
{
    if (state != 56 || (!(place_meeting(x, (y + 1), obj_collisionparent))))
        instance_destroy(other.id);
}