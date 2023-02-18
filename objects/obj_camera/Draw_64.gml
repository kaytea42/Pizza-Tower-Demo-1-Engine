display_set_gui_size(960, 540);
if (obj_player.state != 41)
{
	if (!((obj_player.state == 55) || ((obj_player.state == 9) || ((obj_player.state == 40) || (((obj_player.state == 40) && (obj_player.sprite_index == spr_player_bossintro)) || (((obj_player.state == 40) && (obj_player.sprite_index == spr_player_idle)) || ((obj_player.state == 13) || ((obj_player.state == 23) || ((obj_player.state == 22) || ((obj_player.state == 19) || ((obj_player.state == 24) || ((obj_player.state == 28) || ((obj_player.state == 78) || ((obj_player.state == 32) || ((obj_player.state == 33) || ((obj_player.state == 37) || ((obj_player.state == 34) || ((obj_player.state == 35) || ((obj_player.state == 36) || ((obj_player.state == 43) || (((obj_player.state == 40) && (obj_player.sprite_index == spr_player_levelcomplete)) || (((obj_player.state == 63) && (shake_mag > 0)) || ((obj_player.state == 77) || ((obj_player.state == 60) || ((obj_player.state == 49) || ((obj_player.state == 51) || ((obj_player.state == 56) || ((obj_player.state == 76) || ((obj_player.state == 48) || ((obj_player.state == 59) || ((obj_player.state == 42) || ((obj_player.state == 50) || (obj_player.state == 33)))))))))))))))))))))))))))))))))
	    draw_sprite_ext(spr_pepinoHUD, -1, 120, 80, 1, 1, 0, $00FFFFFF, alpha);
	else if ((obj_player.state == 78) || ((obj_player.state == 63) && (shake_mag > 0)))
	    draw_sprite_ext(spr_pepinoHUDstun, -1, 120, 80, 1, 1, 0, $00FFFFFF, alpha);
	else if ((obj_player.state == 50) || ((obj_player.state == 42) || ((obj_player.state == 48) || ((obj_player.state == 9) || ((obj_player.state == 40) && (obj_player.sprite_index == spr_player_levelcomplete))))))
	    draw_sprite_ext(spr_pepinoHUDhappy, -1, 120, 80, 1, 1, 0, $00FFFFFF, alpha);
	else if ((obj_player.state == 55) || ((obj_player.state == 24) || ((obj_player.state == 19) || ((obj_player.state == 77) || ((obj_player.state == 60) || ((obj_player.state == 43) || ((obj_player.state == 49) || ((obj_player.state == 28) || ((obj_player.state == 51) || ((obj_player.state == 32) || ((obj_player.state == 33) || ((obj_player.state == 37) || ((obj_player.state == 34) || ((obj_player.state == 35) || (obj_player.state == 36)))))))))))))))
	    draw_sprite_ext(spr_pepinoHUDmach1, -1, 120, 80, 1, 1, 0, $00FFFFFF, alpha);
	else if (obj_player.state == 56)
	    draw_sprite_ext(spr_pepinoHUDmach2, -1, 120, 80, 1, 1, 0, $00FFFFFF, alpha);
	else if ((obj_player.state == 76) || (obj_player.state == 23))
	    draw_sprite_ext(spr_pepinoHUDmach3, -1, 120, 80, 1, 1, 0, $00FFFFFF, alpha);
	else if ((obj_player.state == 59) || ((obj_player.state == 22) || ((obj_player.state == 13) || (((obj_player.state == 40) && (obj_player.sprite_index == spr_player_bossintro)) || ((obj_player.state == 40) && (obj_player.sprite_index == spr_player_idle))))))
	    draw_sprite_ext(spr_pepinoHUDhurt, -1, 120, 80, 1, 1, 0, $00FFFFFF, alpha);
	else
	    draw_sprite_ext(spr_pepinoHUDhappy, -1, 120, 80, 1, 1, 0, $00FFFFFF, alpha);
	if (obj_player.mach2 < 7)
	    draw_sprite_ext(spr_speedbar, 0, 120, 120, 1, 1, 0, $00FFFFFF, alpha);
	else if ((obj_player.mach2 >= 7) && (obj_player.mach2 < 35))
	    draw_sprite_ext(spr_speedbar, 1, 120, 120, 1, 1, 0, $00FFFFFF, alpha);
	else if ((obj_player.mach2 >= 35) && (obj_player.mach2 < 50))
	    draw_sprite_ext(spr_speedbar, 2, 120, 120, 1, 1, 0, $00FFFFFF, alpha);
	else if ((obj_player.mach2 >= 50) && (obj_player.mach2 < 75))
	    draw_sprite_ext(spr_speedbar, 3, 120, 120, 1, 1, 0, $00FFFFFF, alpha);
	else if ((obj_player.mach2 >= 75) && (obj_player.mach2 < 100))
	    draw_sprite_ext(spr_speedbar, 4, 120, 120, 1, 1, 0, $00FFFFFF, alpha);
	else if (obj_player.mach2 >= 100)
	    draw_sprite_ext(spr_speedbarmax, -1, 120, 120, 1, 1, 0, $00FFFFFF, alpha);
	if ((obj_player.y < 200) && (obj_player.x < 200))
		alpha = 0.5;
	else
		alpha = 1;
    draw_set_font(global.font);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
	if (timestop == 0) {
		if (global.seconds < 10) {
		    if (global.minutes < 1)
				draw_set_color(c_white);
		    else
				draw_set_color(c_white);
		    draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), ((string_hash_to_newline(string(global.minutes) + ":0") + string(global.seconds))));
		}
		else if (global.seconds >= 10)
		{
		    if (global.minutes < 1)
				draw_set_color($000000FF);
		    else
				draw_set_color(c_white);
		    draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), ((string_hash_to_newline(string(global.minutes) + ":") + string(global.seconds))));
		}
	}
	if (global.key_inv == 1) 
		draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 0, c_white, alpha);
	draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 0, c_white, alpha);
	if (global.treasure == 1)
		draw_sprite_ext(spr_treasure1, -1, 150, 30, 1, 1, 1, c_white, alpha);
	if (global.ammo > 0) {
	    draw_text(800, 450, string_hash_to_newline(global.ammo));
	    draw_sprite(spr_ammo, -1, 840, 480);
	}
}
draw_set_blend_mode(0);