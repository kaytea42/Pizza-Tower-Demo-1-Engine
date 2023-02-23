if (global.breaksound < 9)
    global.breaksound += 1;
if place_meeting(x, (y - 1), obj_player)
{
    with (obj_player)
    {
		if !place_meeting(x, y+1, obj_collisionparent) {
			hsp = 0;
	        movespeed = 0;
	        mach2 = 0;
	        state = 44;
	        sprite_index = spr_player_fall;
		}
    }
	scr_sound(sound_hit);
	var lay_id = layer_get_id("trapscreen1");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != trapscreen2
		layer_background_sprite(back_id, trapscreen2)
	with obj_tutorialtrap
		instance_destroy();
}