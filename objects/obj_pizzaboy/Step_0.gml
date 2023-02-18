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

if (!instance_exists(obj_slaphitbox))
    slapped = 0;
stunned = 100;
if (cigar == 0)
{
    landspr = spr_pizzaboy;
    idlespr = spr_pizzaboy;
    fallspr = spr_pizzaboy;
    hitceillingspr = spr_pizzaboy;
    stunfalltransspr = spr_pizzaboy;
    hitwallspr = spr_pizzaboy;
    stunfallspr = spr_pizzaboy;
    rollingspr = spr_pizzaboy;
    walkspr = spr_pizzaboy;
    turnspr = spr_pizzaboy;
    flyingspr = spr_pizzaboy;
    hitspr = spr_pizzaboy;
    stunlandspr = spr_pizzaboy;
    stunspr = spr_pizzaboy;
    recoveryspr = spr_pizzaboy;
    stompedspr = spr_pizzaboy;
    grabbedspr = spr_pizzaboy;
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