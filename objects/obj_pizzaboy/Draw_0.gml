if (thrown == 1)
{
    render_angle += 5;
    render_angle %= 360;
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, render_angle, image_blend, image_alpha);
}
else
    draw_self();
if flash
{
    shader_set(shd_hit);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    shader_reset();
}