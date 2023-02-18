if ((place_meeting(x, y, obj_player) && obj_player.attacking == 1) || place_meeting(x, y, obj_chainsawhitbox) || place_meeting(x, y, obj_slaphitbox) || place_meeting(x, y, obj_shotgunbullet) || (place_meeting(x, y, obj_pistolbullet) && sprite_index == spr_pizzaboxunopen))
{
    if (sprite_index == spr_pizzaboxunopen)
    {
        image_index = 0;
        instance_create(x, y, obj_bangeffect);
    }
    sprite_index = spr_pizzaboxopen;
    if (obj_player.state == 56)
    {
        if (obj_player.machpunchAnim == 0)
        {
            obj_player.machpunchAnim = 1;
            obj_player.image_index = 0;
        }
    }
}
if (sprite_index == spr_pizzaboxopen && floor(image_index) == 3 && createdpizza == 0)
{
    createdpizza = 1;
    instance_create(x, y, obj_bigcollect);
}
if (sprite_index == spr_pizzaboxopen && floor(image_index) == 16)
    instance_destroy();
