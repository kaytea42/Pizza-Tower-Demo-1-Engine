function scr_enemy_grabbed(){
	image_xscale = (-obj_player.xscale);
	stunned = 200;
	if ((obj_player.state == 14) || ((obj_player.state == 32) || (obj_player.state == 27))) {
	    x = (obj_player.x + (obj_player.xscale * 15));
	    y = obj_player.y;
	    image_xscale = (-obj_player.xscale);
	}
	with (obj_player) {
	    if (!((state == 32) || ((state == 14) || ((state == 27) || ((state == 28) || ((state == 33) || ((state == 29) || ((state == 34) || ((state == 35) || (state == 36)))))))))) {
	        other.x = x;
	        other.y = y;
	        other.state = 89;
	        other.image_index = 0;
	    }
	}
	hsp = 0;
	if ((obj_player.state == 33) && (floor(obj_player.image_index) == 2)) {
	    instance_create((x + (obj_player.xscale * 30)), y, obj_bumpeffect);
	    alarm[1] = 5;
	    thrown = 1;
	    x = obj_player.x;
	    y = obj_player.y;
	    state = 89;
	    hsp = ((-image_xscale) * 25);
	    vsp = -7;
	}
	if ((obj_player.state == 34) && (floor(obj_player.image_index) == 2)) {
	    instance_create((x + ((-obj_player.xscale) * 50)), y, obj_bumpeffect);
	    alarm[1] = 5;
	    thrown = 1;
	    x = obj_player.x;
	    y = obj_player.y;
	    state = 89;
	    image_xscale *= -1;
	    hsp = ((-image_xscale) * 20);
	    vsp = -7;
	}
	if ((obj_player.state == 36) && (floor(obj_player.image_index) == 2)) {
	    instance_create(x, (y + 20), obj_bumpeffect);
	    alarm[1] = 5;
	    thrown = 1;
	    x = obj_player.x;
	    y = obj_player.y;
	    state = 89;
	    hsp = ((-image_xscale) * 10);
	    vsp = -10;
	}
	if ((obj_player.state == 27) && (floor(obj_player.image_index) == 2)) {
	    alarm[1] = 5;
	    thrown = 1;
	    x = obj_player.x;
	    y = obj_player.y;
	    state = 89;
	    hsp = ((-image_xscale) * 10);
	    vsp = -10;
	}
	if ((obj_player.state == 35) && (floor(obj_player.image_index) == 2)) {
	    instance_create((x + ((-obj_player.xscale) * 15)), (y - 50), obj_bumpeffect);
	    alarm[1] = 5;
	    thrown = 1;
	    x = obj_player.x;
	    y = obj_player.y;
	    hsp = ((-image_xscale) * 2);
	    state = 89;
	    vsp = -20;
	}
	if (obj_player.state == 29) {
	    if (floor(obj_player.image_index) == 0) {
	        depth = 0;
	        x = (obj_player.x + (obj_player.xscale * 10));
	        y = obj_player.y;
	    }
	    if (floor(obj_player.image_index) == 1) {
	        depth = 0;
	        x = (obj_player.x + (obj_player.xscale * 5));
	        y = obj_player.y;
	    }
	    if (floor(obj_player.image_index) == 2) {
	        depth = 0;
	        x = obj_player.x;
	        y = obj_player.y;
	    }
	    if (floor(obj_player.image_index) == 3) {
	        depth = 0;
	        x = (obj_player.x + (obj_player.xscale * -5));
	        y = obj_player.y;
	    }
	    if (floor(obj_player.image_index) == 4) {
	        depth = 0;
	        x = (obj_player.x + (obj_player.xscale * -10));
	        y = obj_player.y;
	    }
	    if (floor(obj_player.image_index) == 5) {
	        depth = -7;
	        x = (obj_player.x + (obj_player.xscale * -5));
	        y = obj_player.y;
	    }
	    if (floor(obj_player.image_index) == 6) {
	        depth = -7;
	        x = obj_player.x;
	        y = obj_player.y;
	    }
	    if (floor(obj_player.image_index) == 7) {
	        depth = -7;
	        x = (obj_player.x + (obj_player.xscale * 5));
	        y = obj_player.y;
	    }
	    if (obj_player.sprite_index == spr_player_piledriverland) instance_destroy();
	}
	sprite_index = grabbedspr;
	image_speed = 0.35;
}