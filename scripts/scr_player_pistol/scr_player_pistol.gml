function scr_player_pistol() {
	scr_getinput();
	mach2 = 0;
	move = (key_left + key_right);
	if ((sprite_index != spr_player_pistolair) && (sprite_index != spr_player_shootslide))
	    hsp = 0;
	jumpAnim = 1;
	dashAnim = 1;
	landAnim = 0;
	moveAnim = 1;
	stopAnim = 1;
	crouchslideAnim = 1;
	crouchAnim = 1;
	if ((floor(image_index) == (image_number - 1)) && ((sprite_index != spr_player_crouchshoot) && ((sprite_index != spr_player_shootup) && ((sprite_index != spr_player_shootdiagonal) && ((sprite_index != spr_player_pistolair) && (!key_down))))))
	    state = 0;
	else if ((floor(image_index) == (image_number - 1)) && (key_down && ((sprite_index != spr_player_shootup) && ((sprite_index != spr_player_shootdiagonal) && (sprite_index != spr_player_pistolair)))))
	    state = 52;
	else if ((floor(image_index) == (image_number - 1)) && (sprite_index != spr_player_pistolair))
	{
	    if (move != 0)
	        sprite_index = spr_player_aimdiagonal;
	    else
	        sprite_index = spr_player_aimup;
	    image_index = 2;
	    state = 2;
	}
	else if (!place_meeting(x, (y + 1), obj_collisionparent) && ((vsp > 0) && (sprite_index == spr_player_pistolair)))
	{
	    sprite_index = spr_player_shootslide;
	    state = 54;
	}
	if ((shoot == 1) && ((floor(image_index) == 0) && ((sprite_index == spr_player_pistol) || (sprite_index == spr_player_pistolair))))
	{
	    with (obj_camera)
	    {
	        shake_mag = 8;;
	        shake_mag_acc = (30 / room_speed);
	    }
	    with (instance_create((x + (xscale * 10)), (y - 5), obj_pistoleffect))
	        image_xscale = other.xscale;
	    if (xscale == 1)
	        var box = bbox_right;
	    else
	        box = bbox_left;
	    var ID = instance_create((box + (xscale * 10)), y, obj_pistolbullet);
	    ID.hspeed = (xscale * 15);
	    shoot = 0;
	}
	if ((shoot == 1) && ((floor(image_index) == 0) && (sprite_index == spr_player_crouchshoot)))
	{
	    with (obj_camera)
	    {
	        shake_mag = 8;
	        shake_mag_acc = (30 / room_speed);
	    }
	    with (instance_create((x + (xscale * 10)), (y + 16), obj_pistoleffect))
	        image_xscale = other.xscale;
	    if (xscale == 1)
	        box = bbox_right;
	    else
	        box = bbox_left;
	    ID = instance_create((box + (xscale * 10)), (y + 20), obj_pistolbullet);
	    ID.hspeed = (xscale * 15);
	    shoot = 0;
	}
	if ((shoot == 1) && ((floor(image_index) == 0) && (sprite_index == spr_player_shootup)))
	{
	    with (obj_camera)
	    {
	        shake_mag = 8;
	        shake_mag_acc = (30 / room_speed);
	    }
	    with (instance_create((x + ((-xscale) * 10)), (y - 10), obj_pistoleffect))
	    {
	        sprite_index = spr_pistoleffectup;
	        image_xscale = other.xscale;
	    }
	    box = bbox_top;
	    ID = instance_create((x + ((-xscale) * 16)), box, obj_pistolbulletup);
	    ID.vspeed = -15;
	    shoot = 0;
	}
	if ((shoot == 1) && ((floor(image_index) == 0) && (sprite_index == spr_player_shootdiagonal)))
	{
	    with (obj_camera)
	    {
	        shake_mag = 8;
	        shake_mag_acc = (30 / room_speed);
	    }
	    with (instance_create(x, (y - 10), obj_pistoleffect))
	    {
	        if (other.xscale == 1)
	            image_angle = -60;
	        else
	            image_angle = 60;
	        sprite_index = spr_pistoleffectup;
	        image_xscale = other.xscale;
	    }
	    box = bbox_top;
	    ID = instance_create((x + ((-xscale) * 5)), (box + 12), obj_pistolbulletdiagonal);
	    ID.vspeed = -15;
	    ID.hspeed = (xscale * 15);
	    shoot = 0;
	}
	if (key_shoot && ((!place_meeting(x, (y + 1), obj_collisionparent) && (floor(image_index) == (image_number - 1)))))
	{
	    image_index = 0;
	    shoot = 1;
	}
	if ((!place_meeting(x, (y + 1), obj_collisionparent)) && (sprite_index != spr_player_pistolair))
	    sprite_index = spr_player_pistolair;
	if (floor(image_index) != (image_number - 1))
	    image_speed = 0.45;
	else
	    image_speed = 0;
	scr_collideandmove();
}