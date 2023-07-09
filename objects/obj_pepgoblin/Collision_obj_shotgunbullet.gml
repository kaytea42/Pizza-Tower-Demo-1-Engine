instance_destroy(other.id);
if ((other.closerange == 0) && (stun == 0))
{
    if (x != other.x)
    {
        hsp = (sign((x - obj_player.x)) * 6);
        image_xscale = (- sign((x - other.x)));
    }
    else
    {
        image_xscale = 1;
        hsp = 6;
    }
    vsp = -3;
    ministun = 0;
    stun = 1;
    alarm[0] = 200;
    image_index = 0;
}
if ((other.closerange == 1) || ((stun == 1) && (vsp >= 0)))
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
    instance_create(x, y, obj_explosioneffect);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
    instance_create(x, y, obj_baddiegibs);
}