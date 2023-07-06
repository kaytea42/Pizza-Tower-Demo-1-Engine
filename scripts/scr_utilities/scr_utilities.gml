function enemy_combo() {
    global.combo += 1;
    if (global.combo == 1)
    {
        scr_sound(sound_combo1);
        instance_create(x, y, obj_10);
        global.collect += 10;
    }
    if (global.combo == 2)
    {
        scr_sound(sound_combo2);
        instance_create(x, y, obj_20);
        global.collect += 20;
    }
    if (global.combo == 3)
    {
        scr_sound(sound_combo3);
        instance_create(x, y, obj_40);
        global.collect += 40;
    }
    if (global.combo >= 4)
    {
        scr_sound(sound_combo4);
        instance_create(x, y, obj_80);
        global.collect += 80;
    }
    global.combotime = 60;
}

function check_tilecollision(_tilemap) {
	var _meeting = !!tilemap_get_at_pixel(_tilemap, bbox_right, bbox_top)
	          +
	          !!tilemap_get_at_pixel(_tilemap, bbox_right, bbox_bottom) * 2
	          +
	          !!tilemap_get_at_pixel(_tilemap, bbox_left, bbox_top) * 4
	          +
	          !!tilemap_get_at_pixel(_tilemap, bbox_left, bbox_bottom) * 8;

	return _meeting;
}