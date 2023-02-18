switch state
{
    case 79:
        scr_enemy_idle()
        break
    case 81:
        scr_enemy_turn()
        break
    case 85:
        scr_enemy_walk()
        break
    case 87:
        scr_enemy_land()
        break
    case 88:
        scr_enemy_hit()
        break
    case 89:
        scr_enemy_stun()
        break
    case 92:
        scr_enemy_grabbed()
        break
}

if (89 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1;
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}
if (!instance_exists(obj_slaphitbox))
    slapped = 0;
if (cigar == 1)
{
    landspr = spr_sausageman_land;
    idlespr = spr_sausageman_idle;
    fallspr = spr_sausageman_fall;
    hitceillingspr = spr_sausageman_hitceiling;
    stunfalltransspr = spr_sausageman_stunfalltrans;
    hitwallspr = spr_sausageman_hitwall;
    stunfallspr = spr_sausageman_stunfall;
    rollingspr = spr_sausageman_rolling;
    walkspr = spr_sausageman_walk;
    turnspr = spr_sausageman_turn;
    flyingspr = spr_sausageman_flying;
    hitspr = spr_sausageman_hit;
    stunlandspr = spr_sausageman_stunland;
    stunspr = spr_sausageman_stun;
    recoveryspr = spr_sausageman_recovery;
    stompedspr = spr_sausageman_stomped;
    grabbedspr = spr_sausageman_stunfall;
}
if (cigar == 0)
{
    landspr = spr_sausagemannocigar_land;
    idlespr = spr_sausagemannocigar_idle;
    fallspr = spr_sausagemannocigar_fall;
    hitceillingspr = spr_sausagemannocigar_hitceiling;
    stunfalltransspr = spr_sausagemannocigar_stunfalltrans;
    hitwallspr = spr_sausagemannocigar_hitwall;
    stunfallspr = spr_sausagemannocigar_stunfall;
    rollingspr = spr_sausagemannocigar_rolling;
    walkspr = spr_sausagemannocigar_walk;
    turnspr = spr_sausagemannocigar_turn;
    flyingspr = spr_sausagemannocigar_flying;
    hitspr = spr_sausagemannocigar_hit;
    stunlandspr = spr_sausagemannocigar_stunland;
    stunspr = spr_sausagemannocigar_stun;
    recoveryspr = spr_sausagemannocigar_recovery;
    stompedspr = spr_sausagemannocigar_stomped;
    grabbedspr = spr_sausagemannocigar_stunfall;
}
if (cigar == 1 && cigarcreate == 0 && (state == 79 || state == 85 || state == 81 || state == 87))
{
    cigarcreate = 1;
    with (instance_create(x, y, obj_sausagemancigar))
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
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed);