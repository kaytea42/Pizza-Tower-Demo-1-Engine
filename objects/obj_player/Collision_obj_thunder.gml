sprite_index = spr_knightpep_thunder;
instance_destroy(other.id);
image_index = 0;
with (obj_camera)
{
    shake_mag = 10;
    shake_mag_acc = (30 / room_speed);
}