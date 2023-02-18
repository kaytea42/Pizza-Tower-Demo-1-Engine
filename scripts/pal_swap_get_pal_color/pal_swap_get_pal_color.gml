function pal_swap_get_pal_color(){
var _palettes, _current_pal;
_palettes = ds_map_find_value(global.Pal_Map, argument[0])
_current_pal = ds_list_find_value(_palettes, argument[1])
return ds_list_find_value(_current_pal, argument[2]);
}