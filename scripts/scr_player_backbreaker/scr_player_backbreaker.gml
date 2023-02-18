function scr_player_backbreaker(){
	scr_getinput();
	scr_collideandmove();
	if (sprite_index == spr_player_taunt)
	{
	    taunttimer--;
	    vsp = 0;
		hsp = 0;
		image_speed = 0;
	}
	if ((taunttimer == 0) && (sprite_index == spr_player_taunt))
	{
	    movespeed = tauntstoredmovespeed;
	    sprite_index = tauntstoredsprite;
	    state = tauntstoredstate;
	}
}