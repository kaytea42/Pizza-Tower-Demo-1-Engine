switch state {
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
if (89 && ((stunned > 40) && (birdcreated == 0))) {
    birdcreated = 1;
    with (instance_create(x, y, obj_enemybird)) ID = other.id;
}
if ((flash == 1) && (alarm[2] <= 0))
    alarm[2] = (0.15 * room_speed);
if (!instance_exists(obj_slaphitbox))
    slapped = 0;
if (state != 92)
    depth = 0;
if (state != 89)
    thrown = 0;
if ((hitboxcreate == 0) && obj_player.state != 76 && ((state == 79) || (state == 85))) {
    hitboxcreate = 1;
    with (instance_create(x, y, obj_forkhitbox)) ID = other.id;
}