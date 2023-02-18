function pal_swap_set_tiles(){
var _pal_sprite, _pal_index, _low, _high, _is_surface, _start_exists, _end_exists;
_pal_sprite = argument[0]
_pal_index = argument[1]
_low = (argument[2] + 1)
_high = (argument[3] - 1)
_is_surface = argument[4]
if (_low < _high)
{
    _low = (argument[3] - 1)
    _high = (argument[2] + 1)
}
_start_exists = 0
with (obj_tile_swapper_start)
{
    if (depth == _low)
    {
        _start_exists = 1
        active = 1
        pal_sprite = _pal_sprite
        pal_index = _pal_index
        pal_is_surface = _is_surface
    }
}
if (!_start_exists)
{
    with (instance_create(0, 0, obj_tile_swapper_start))
    {
        active = 1
        depth = _low
        pal_sprite = _pal_sprite
        pal_index = _pal_index
        pal_is_surface = _is_surface
    }
}
_end_exists = 0
with (obj_tile_swapper_end)
{
    if (depth == _high)
    {
        _end_exists = 1
        active = 1
    }
}
if (!_end_exists)
{
    with (instance_create(0, 0, obj_tile_swapper_end))
    {
        active = 1
        depth = _high
    }
}   
}