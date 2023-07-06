function scr_player_climbwall(){
	scr_getinput();
	if (windingAnim < 200)
	    windingAnim++;
	vsp = (-movespeed);
	mach2 = 35;
	if (movespeed > 0)
	    movespeed -= 0.5;
	crouchslideAnim = 1;
	sprite_index = spr_player_climbwall;
	if (!key_attack)
	{
	    state = 44;
	    sprite_index = spr_player_fall;
	}
	if (!place_meeting((x + xscale), y, obj_collisionparent))
	{
	    instance_create(x, y, obj_jumpdust);
	    vsp = 0;
	    mach2 = 35;
	    state = 56;
	}
	if ((place_meeting(x, (y + 1), obj_collisionparent) && (movespeed <= 0)) || (movespeed <= 0))
	{
	    state = 44;
	    sprite_index = spr_player_fall;
	}
	image_speed = 0.6;
	if (!instance_exists(obj_cloudeffect))
	    instance_create(x, (y + 43), obj_cloudeffect);
	if (key_jump && key_attack)
	{
	    instance_create(x, y, obj_jumpdust);
	    mach2 = 35;
	    vsp = -9;
	    state = 56;
	    xscale *= -1;
	}
	scr_collideandmove();
}