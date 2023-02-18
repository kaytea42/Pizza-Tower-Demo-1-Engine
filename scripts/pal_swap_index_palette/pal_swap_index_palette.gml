function pal_swap_index_palette(){
var _spr, _colors, _palettes, _num, _surface, i, _pal, ii;
if (!ds_map_exists(global.Pal_Map, argument[0]))
{
    _spr = argument[0]
    _colors = sprite_get_height(_spr)
    _palettes = ds_list_create()
    ds_map_add(global.Pal_Map, _spr, _palettes)
    if (sprite_get_width(_spr) > 1)
    {
        _num = sprite_get_width(_spr)
        _surface = surface_create(_num, _colors)
        surface_set_target(_surface)
        draw_sprite(_spr, 0, 0, 0)
    }
    for (i = 0; i < _num; i++)
    {
        _pal = ds_list_create()
        for (ii = 0; ii < _colors; ii++)
            ds_list_add(_pal, surface_getpixel(_surface, i, ii))
        ds_list_add(_palettes, _pal)
    }
    show_debug_message(((string(_num) + " palettes indexed for sprite: ") + sprite_get_name(_spr)))
    surface_reset_target()
    surface_free(_surface)
}
else
    show_debug_message("That palette has already been indexed.")
}