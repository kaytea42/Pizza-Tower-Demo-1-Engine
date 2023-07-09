image_xscale = obj_player.xscale;
x = obj_player.x;
y = obj_player.y;
if (obj_player.state != 15)
    instance_destroy();
if (place_meeting(x, y, obj_collisionparent) || place_meeting(x, y, obj_spike))
{
    if (!instance_exists(obj_pogoeffect))
        instance_create(x, y, obj_pogoeffect);
    obj_player.image_index = 0;
    obj_player.sprite_index = spr_player_chainsawpogobounce;
    obj_player.vsp = -7;
}
if place_meeting(x, y, obj_pizzaboxunopen)
{
    with (obj_pizzaboxunopen)
    {
        if (sprite_index == spr_pizzaboxunopen)
        {
            if (!instance_exists(obj_pogoeffect))
                instance_create(other.x, other.y, obj_pogoeffect);
            obj_player.image_index = 0;
            obj_player.sprite_index = spr_player_chainsawpogobounce;
            obj_player.vsp = -7;
        }
    }
}
if place_meeting(x, y, obj_destructibles)
{
    obj_player.image_index = 0;
    obj_player.sprite_index = spr_player_chainsawpogobounce;
    obj_player.vsp = -7;
}