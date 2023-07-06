var a;
a = random_range(-100, 100);
alarm[4] = 5;
obj_camera.shake_mag = 3;
obj_camera.shake_mag_acc = (4 / room_speed);
with (instance_create((x + a), (y + a), obj_bombexplosion))
    mask_index = spr_masknull;
instance_create((x + a), (y + a), obj_slapstar);
instance_create((x + a), (y + a), obj_slapstar);
instance_create((x + a), (y + a), obj_slapstar);