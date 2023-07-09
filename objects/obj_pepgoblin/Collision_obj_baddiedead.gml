if ((other.grabbed == 0) && ((other.hsp != 0) && ((! (vsp < 0)) && place_meeting(x, (y + 1), obj_collisionparent))))
{
    instance_create(x, y, obj_bumpeffect);
    alarm[0] = 200;
    ministun = 0;
    stun = 1;
    hsp = (sign((x - other.x)) * 6);
    if (x != other.x)
        image_xscale = (- sign((x - other.x)));
    vsp = -4;
}
else if ((stun == 1) && ((vsp == 0) && (other.hsp != 0)))
{
    instance_destroy();
    obj_player.alarm[9] = 100;
    obj_player.combo += 1;
	if (obj_player.combo == 1)
	{
	    instance_create(x, y, obj_10);
	    global.pizzameter += 1;
	    global.collect += 10;
	}
	if (obj_player.combo == 2)
	{
	    instance_create(x, y, obj_20);
	    global.pizzameter += 2;
	    global.collect += 20;
	}
	if (obj_player.combo == 3)
	{
	    instance_create(x, y, obj_40);
	    global.pizzameter += 4;
	    global.collect += 40;
	}
	if ((obj_player.combo == 4) || (obj_player.combo > 4))
	{
	    instance_create(x, y, obj_80);
	    global.pizzameter += 8;
	    global.collect += 80;
	}
    with(instance_create(x, y, obj_pepgoblindead))
    {
        if (other.stun == 0)
            image_xscale = other.image_xscale;
        else
            image_xscale = other.image_xscale;
        instance_create(x, y, obj_bangeffect);
        if (x != other.x)
            hsp = (sign((x - obj_player.x)) * 15);
        vsp = -10;
    }
    audio_sound_gain(sfx_enemyhit, 0.7, 0);
    audio_play_sound(sfx_enemyhit, 1, 0);
}