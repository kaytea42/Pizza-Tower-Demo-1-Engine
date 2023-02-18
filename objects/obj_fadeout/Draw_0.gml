draw_set_alpha(fadealpha);
draw_set_color(c_black);
draw_rectangle(0, 0, (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)), 0);
draw_set_alpha(1);