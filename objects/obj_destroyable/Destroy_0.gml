instance_create((x + 16), y, obj_debris);
instance_create((x + 16), y, obj_debris);
instance_create((x + 16), y, obj_debris);
instance_create((x + 16), y, obj_debris);
var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id, x, y);
data = tile_set_empty(data);
tilemap_set_at_pixel(map_id, data, x, y);
if (global.breaksound == 9)
    scr_sound(sound_hit);
global.breaksound = 0;