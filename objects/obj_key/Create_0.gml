if (global.key_inv == 1)
{
    vsp = -15;
    hsp = random_range(-4, 4);
}
hsp = 0;
vsp = 0;
inv_frame = 0;
grav = 0.4;
image_speed = 0.35;
if (global.key_inv == 1)
    instance_destroy();