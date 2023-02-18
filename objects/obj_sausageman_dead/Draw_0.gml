if (cigar == 1) {
    pal_swap_set(spr_sausageman_palette, 1, 0);
    draw_self();
    shader_reset();
}
else draw_self();