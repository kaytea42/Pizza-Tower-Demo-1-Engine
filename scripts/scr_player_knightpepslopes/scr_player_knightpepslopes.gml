function scr_player_knightpepslopes(){
	scr_getinput();
	hsp = (xscale * movespeed);
	if (sprite_index == spr_knightpep_downslope)
	    movespeed += 0.5;
	if (!(place_meeting(x, (y + 1), obj_slopes)))
	    sprite_index = spr_knightpep_charge;
	if ((!(place_meeting((x + sign(hsp)), y, obj_collisionparent))) && (!(place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent))) && place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent))
	    sprite_index = spr_knightpep_downslope;
	if (sprite_index == spr_knightpep_charge)
	    movespeed -= 0.1;
	if place_meeting((x + sign(hsp)), y, obj_collisionparent)
	{
	    instance_create((x + (xscale * 10)), (y + 10), obj_bumpeffect);
	    vsp = -5;
	    hsp = ((-xscale) * 5);
	    sprite_index = spr_knightpep_fall;
	    state = 10;
	}
	if (movespeed <= 0 && sprite_index == spr_knightpep_charge)
	{
	    sprite_index = spr_knightpep_idle;
	    state = 10;
	}
	image_speed = 0.4;
	scr_collideandmove();
}