if (pause == 1)
{
    draw_rectangle_color(0, 0, room_width, room_height, color, color, color, color, 0);
    draw_sprite_tiled(spr_pizzacollect, 0, x, y);
    vspeed = -0.25;
    hspeed = 0.25;
}