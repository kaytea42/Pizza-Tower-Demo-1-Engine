with (other.id)
{
    sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
    image_speed = 0.35
    hsp = 0
    vsp = 0
    grav = 0.5
    drop = 0
    global.collected = 0
    global.collectsound = 0
    cantcollect = 0
    flicker = 0
    disappear = 0
    balloon = 0
}
depth = 1;