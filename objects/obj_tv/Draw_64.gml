draw_set_font(global.font);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_sprite_ext(tvsprite, -1, 832, 74, 1, 1, 1, c_white, alpha);
if ((obj_player.y < 200) && (obj_player.x > (room_width - 200)))
	alpha = 0.5;
else
	alpha = 1;
draw_text(xi, yi, message);
if (obj_player.state == 59) {
    image_speed = 0.1;
    showtext = 1;
    if (chose == 0)
		message = choose("YOU DINGUS...", "OUCH!", "THIS MUST HURT!", "YOU CAN DO BETTER THAN THAT!", "DONT GET TOUCHED BY THAT");
    alarm[0] = 50;
    chose = 1;
    tvsprite = spr_tvhurt;
    once = 1;
}
else if (obj_player.state == 22) {
    alarm[0] = 50;
    image_speed = 0.1;
    tvsprite = spr_tvskull;
}
else if (global.hurtcounter >= global.hurtmilestone) {
    alarm[0] = 150;
    image_speed = 0.1;
    message = (("YOU HAVE HURT PEPPINO " + string(global.hurtmilestone)) + " TIMES...");
    if ((tvsprite != spr_tvtalking1) && ((tvsprite != spr_tvtalking2) && ((tvsprite != spr_tvtalking3) && (tvsprite != spr_tvtalking4))))
		tvsprite = choose(spr_tvtalking1, spr_tvtalking2, spr_tvtalking3, spr_tvtalking4);
    global.hurtmilestone += 3;
}
else if (obj_player.state == 13) {
    image_speed = 0.1;
    showtext = 1;
    message = "A BOMB!!";
    alarm[0] = 5;
    tvsprite = spr_tvbomb;
    once = 1;
}
else if (((obj_player.state == 10) || ((obj_player.state == 11) || (obj_player.state == 4))) && (obj_player.sprite_index == spr_knightpep_thunder)) {
    showtext = 1;
    message = "YOU ARE NOW A MIGHTY KNIGHT!!";
    alarm[0] = 150;
    tvsprite = spr_tvknight;
    once = 1;
}
else if (obj_player.state == 30) {
    showtext = 1;
    message = "SWEET DUDE!!";
    alarm[0] = 50;
    tvsprite = spr_tvrad;
    once = 1;
}
else if (obj_player.state == 46) {
    image_speed = 0.1;
    showtext = 1;
    message = "OOPS!!";
    alarm[0] = 50;
    tvsprite = spr_tvbanana;
    once = 1;
}
else if ((global.combo != 0) && ((global.combotime != 0) && ((tvsprite == spr_tvdefault) || (tvsprite == spr_tvcombo)))) {
    draw_text(852, 75, global.combo);
    tvsprite = spr_tvcombo;
    image_speed = 0;
    if (global.combo >= 4)
		imageindexstore = 3;
    else if (global.combo == 3)
		imageindexstore = 2;
    else if (global.combo == 2)
		imageindexstore = 1;
    else if (global.combo == 1)
		imageindexstore = 0;
}
else if ((global.combotime == 0) && (tvsprite == spr_tvcombo)) {
    tvsprite = spr_tvcomboresult;
    if (imageindexstore == 3)
		image_index = 3;
    else if (imageindexstore == 2)
		image_index = 2;
    else if (imageindexstore == 1)
		image_index = 1;
    else if (imageindexstore == 0)
		image_index = 0;
    alarm[0] = 50;
}
if (obj_tv.tvsprite == spr_tvdefault) {
	chose = 0;
	draw_text(832, 60, string_hash_to_newline(global.collect));
}
if instance_exists(obj_noise_normalT1)
{
    if (obj_noise_normalT1.hsp != 0 && global.panic == 0)
    {
        showtext = 1;
        message = "UH OH...";
        alarm[0] = 50;
    }
}
if (obj_player.state == 42) {
    showtext = 1;
    message = "NOW GO TO THE NEXT FLOOR!!";
    alarm[0] = 50;
}
if (global.panic == 1) {
    tvsprite = spr_tvexit;
    showtext = 1;
    message = "ESCAPE!!";
}