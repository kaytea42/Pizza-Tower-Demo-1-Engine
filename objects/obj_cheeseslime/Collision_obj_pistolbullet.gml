vsp = -5;
hsp = other.image_xscale;
image_index = 0;
stunned = 50;
state = 89;
hp -= 1;
flash = 1;
if (hp == 0)
    instance_destroy();
if (other.sprite_index == spr_pistolbullet || other.sprite_index == spr_bulletup)
    instance_destroy(other.id);