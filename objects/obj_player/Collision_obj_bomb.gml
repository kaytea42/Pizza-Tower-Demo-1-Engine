if (hurted == 0 && state != 13)
{
    bombpeptimer = other.countdown;
    hsp = 0;
    movespeed = 0;
    image_index = 0;
    state = 13;
    sprite_index = spr_bombpep_intro;
    instance_create((x + (image_xscale * 40)), y, obj_punchdust);
    instance_destroy(other.id);
}