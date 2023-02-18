if room == rm_test && global.panic == false
{
    draw_sprite_tiled(bg_desert, -1, __view_get( e__VW.XView, view_current ) * 0.810, __view_get( e__VW.YView, view_current )+0)
}
else if room == rm_test && global.panic == true
{
    draw_sprite_tiled(bg_desert, -1, __view_get( e__VW.XView, view_current ) * 0.810, __view_get( e__VW.YView, view_current )+0)
}

