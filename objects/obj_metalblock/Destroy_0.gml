instance_create((x + 32), (y + 32), obj_metaldebris);
instance_create((x + 32), (y + 32), obj_metaldebris);
instance_create((x + 32), (y + 32), obj_metaldebris);
instance_create((x + 32), (y + 32), obj_metaldebris);
tile_layer_delete_at(1, x, y);
tile_layer_delete_at(1, (x + 32), y);
tile_layer_delete_at(1, (x + 32), (y + 32));
tile_layer_delete_at(1, x, (y + 32));
with (obj_camera)
{
    shake_mag = 20;
    shake_mag_acc = (40 / room_speed);
}
scr_sound(sound_hit);