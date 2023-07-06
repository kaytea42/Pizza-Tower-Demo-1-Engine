global.breaksound = 0;
depth = 2;
var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id, x, y);
if (tilemap_get_at_pixel(map_id, x, y))
	visible = 0;