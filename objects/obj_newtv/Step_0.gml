spr_main = spr_peptv1;
spr_second = spr_peptv2;
spr_third = spr_peptv3;
spr_maintransition = spr_peptv1transition;
spr_secondtransition = spr_peptv2transition;
spr_thirdtransition = spr_peptv3transition;
spr_lasttransition = spr_peptv4transition;
if sprite_index == spr_tvturnon && floor(image_index) == image_number - 1 {
	sprite_index = spr_main;
	image_index = 0;
}
if sprite_index == spr_main && floor(image_index) == image_number - 1 {
	sprite_index = choose(spr_main, spr_main, spr_maintransition, spr_thirdtransition);
	image_index = 0;
}
if sprite_index == spr_second && floor(image_index) == image_number - 1 {
	sprite_index = choose(spr_second, spr_second, spr_secondtransition);
	image_index = 0;
}
if sprite_index == spr_third && floor(image_index) == image_number - 1 {
	sprite_index = choose(spr_third, spr_third, spr_lasttransition);
	image_index = 0;
}
if sprite_index == spr_maintransition && floor(image_index) == image_number - 1 {
	sprite_index = spr_second;
	image_index = 0;
}
if sprite_index == spr_thirdtransition && floor(image_index) == image_number - 1 {
	sprite_index = spr_third;
	image_index = 0;
}
if sprite_index == spr_secondtransition && floor(image_index) == image_number - 1 {
	sprite_index = spr_main;
	image_index = 0;
}
if sprite_index == spr_lasttransition && floor(image_index) == image_number - 1 {
	sprite_index = spr_main;
	image_index = 0;
}
if instance_exists(obj_player) {
	if global.combo >= 3 && sprite_index != spr_peptvevil {
		sprite_index = spr_peptvevil;
	}
	if sprite_index == spr_peptvevil && global.combo == 0 {
		sprite_index = spr_main;
	}
	if global.panic == 1 && sprite_index != spr_peptvpanic && global.combo < 3 {
		sprite_index = spr_peptvpanic;
	}
	if sprite_index == spr_peptvpanic && global.panic == 0 {
		sprite_index = spr_main;
	}
}