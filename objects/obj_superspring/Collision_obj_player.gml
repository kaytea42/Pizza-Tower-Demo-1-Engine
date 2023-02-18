with (obj_player) {
    if (state != 49) {
        scr_sound(sound_superjump);
        sprite_index = spr_player_superjump;
        state = 49;
        vsp = -10;
        other.image_index = 0;
        other.image_speed = 0.35;
		x = other.x;
    }
}