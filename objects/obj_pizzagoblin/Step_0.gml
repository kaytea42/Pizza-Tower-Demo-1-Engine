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
    case 80:
        scr_pizzagoblin_throw();
        break;
}

if (!instance_exists(obj_slaphitbox))
    slapped = 0;
if (89 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1;
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}

landspr = spr_pizzagoblin_land;
idlespr = spr_pizzagoblin_idle;
fallspr = spr_pizzagoblin_fall;
hitceillingspr = spr_pizzagoblin_hitceiling;
stunfalltransspr = spr_pizzagoblin_stunfalltrans;
hitwallspr = spr_pizzagoblin_hitwall;
stunfallspr = spr_pizzagoblin_stunfall;
walkspr = spr_pizzagoblin_walk;
turnspr = spr_pizzagoblin_turn;
flyingspr = spr_pizzagoblin_flying;
hitspr = spr_pizzagoblin_hit;
stunlandspr = spr_pizzagoblin_stunland;
stunspr = spr_pizzagoblin_stun;
recoveryspr = spr_pizzagoblin_recovery;
stompedspr = spr_pizzagoblin_stomped;
grabbedspr = spr_pizzagoblin_grabbed;
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed);
if (state != 92)
    depth = 0;
if (state != 89)
    thrown = 0;
if place_meeting(x, (y + 1), obj_collisionparent)
    grounded = 1;
else
    grounded = 0;
if (bombreset > 0)
    bombreset--;
if (x != obj_player.x && state != 80 && bombreset == 0)
{
    if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && obj_player.y == y)
    {
        if ((state == 85 || state == 79) && place_meeting(x, (y + 1), obj_enemiesbumpable))
        {
            image_index = 0;
            image_xscale = (-(sign((x - obj_player.x))));
            state = 80;
        }
    }
}