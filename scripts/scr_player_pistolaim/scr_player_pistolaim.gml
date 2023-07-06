function scr_player_pistolaim(){
	mach2 = 0;
	move = (key_left + key_right);
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	hsp = 0;
	movespeed = 0;
	if (!key_up)
	{
	    state = 0;
	    image_index = 0;
	}
	if (move != 0)
	    sprite_index = spr_player_aimdiagonal;
	else
	    sprite_index = spr_player_aimup;
	if (key_shoot2 && (!key_up))
	{
	    sprite_index = spr_player_pistol;
	    image_index = 0;
	    state = 25;
	    shoot = 1;
	}
	if (key_shoot2 && (sprite_index == spr_player_aimup))
	{
	    sprite_index = spr_player_shootup;
	    image_index = 0;
	    state = 25;
	    shoot = 1;
	}
	if (key_shoot2 && (sprite_index == spr_player_aimdiagonal))
	{
	    sprite_index = spr_player_shootdiagonal;
	    image_index = 0;
	    state = 25;
	    shoot = 1;
	}
	if (!place_meeting(x, (y + 1), obj_collisionparent))
	{
	    sprite_index = spr_player_fall;
	    state = 44;
	}
	if (move != 0)
	    xscale = move;
	if (floor(image_index) != (image_number - 1))
	    image_speed = 0.45;
	else
	    image_speed = 0;
}