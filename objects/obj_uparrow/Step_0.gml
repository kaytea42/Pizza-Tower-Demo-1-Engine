image_speed = 0.35;
with (obj_player)
{
    if (((!place_meeting(x, y, obj_door)) && ((!place_meeting(x, y, obj_keydoor)) && (!place_meeting(x, y, obj_exitgate)))) || ((!place_meeting(x, (y + 1), obj_collisionparent)) || (state != 0)))
        instance_destroy(other.id);
}
x = obj_player.x;
y = (obj_player.y - 50);

