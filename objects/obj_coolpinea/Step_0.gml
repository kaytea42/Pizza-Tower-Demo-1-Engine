switch state
{
    case 79:
        scr_enemy_idle();
        break;
    case 81:
        scr_enemy_turn();
        break;
    case 85:
        scr_enemy_walk();
        break;
    case 87:
        scr_enemy_land();
        break;
    case 88:
        scr_enemy_hit();
        break;
    case 89:
        scr_enemy_stun();
        break;
    case 92:
        scr_enemy_grabbed();
        break;
}

if (89 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1;
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}
if (!instance_exists(obj_slaphitbox))
    slapped = 0;
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed);
if (hitboxcreate == 0 && (state == 79 || state == 85))
{
    hitboxcreate = 1;
    with (instance_create(x, y, obj_pineahitbox))
        ID = other.id;
}
if (state != 92)
    depth = 0;
if place_meeting(x, (y + 1), obj_collisionparent)
    grounded = 1;
else
    grounded = 0;
if (state != 89)
    thrown = 0;