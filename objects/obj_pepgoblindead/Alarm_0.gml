var a;
a = random_range(-40, 40);
alarm[0] = 5;
if (grabbed == 0)
    instance_create((x + a), (y + a), obj_machalleffect);