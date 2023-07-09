font = font_add_sprite(spr_numbers, 48, 0, -10);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(c_white);
if (obj_camera.seconds < 10)
{
    if (obj_camera.minutes <= 1)
        draw_set_color(c_red);
    else
        draw_set_color(c_white);
    draw_text(704, 128, ((string(obj_camera.minutes) + ":0") + string(obj_camera.seconds)));
}
else if (obj_camera.seconds >= 10)
{
    if (obj_camera.minutes <= 1)
        draw_set_color(c_red);
    else
        draw_set_color(c_white);;
    draw_text(704, 128, ((string(obj_camera.minutes) + ":") + string(obj_camera.seconds)))
}
draw_set_blend_mode(bm_normal);