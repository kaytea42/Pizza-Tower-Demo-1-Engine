if (thrown == 0 && (obj_player.state == 14 || obj_player.state == 32 || obj_player.state == 27 || obj_player.state == 33 || obj_player.state == 35 || obj_player.state == 29 || obj_player.state == 36 || obj_player.state == 34))
{
    charging = 0;
    chargingdown = 0;
    movespeed = 0;
    image_xscale = (-obj_player.xscale);
    if place_meeting(x, y, obj_player)
    {
        if (obj_player.state == 33 && floor(obj_player.image_index) == 2)
        {
            instance_create((x + (obj_player.xscale * 30)), y, obj_bumpeffect);
            thrown = 1;
            hsp = ((-image_xscale) * 15);
            vsp = -6;
        }
        if (obj_player.state == 34 && floor(obj_player.image_index) == 2)
        {
            instance_create((x + ((-obj_player.xscale) * 50)), y, obj_bumpeffect);
            thrown = 1;
            image_xscale *= -1;
            hsp = ((-image_xscale) * 10);
            vsp = -6;
        }
        if (obj_player.state == 36 && floor(obj_player.image_index) == 2)
        {
            instance_create(x, (y + 20), obj_bumpeffect);
            thrown = 1;
            hsp = ((-image_xscale) * 5);
            vsp = -10;
        }
        if (obj_player.state == 27 && floor(obj_player.image_index) == 2)
        {
            thrown = 1;
            hsp = ((-image_xscale) * 7);
            vsp = -10;
        }
        if (obj_player.state == 35 && floor(obj_player.image_index) == 2)
        {
            instance_create((x + ((-obj_player.xscale) * 15)), (y - 50), obj_bumpeffect);
            thrown = 1;
            hsp = ((-image_xscale) * 2);
            state = 89;
            vsp = -20;
        }
    }
    if (obj_player.state == 29)
    {
        if (floor(obj_player.image_index) == 0)
        {
            depth = 0;
            x = (obj_player.x + (obj_player.xscale * 20));
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 1)
        {
            depth = 0;
            x = (obj_player.x + (obj_player.xscale * 10));
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 2)
        {
            depth = 0;
            x = obj_player.x;
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 3)
        {
            depth = 0;
            x = (obj_player.x + (obj_player.xscale * -10));
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 4)
        {
            depth = 0;
            x = (obj_player.x + (obj_player.xscale * -20));
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 5)
        {
            depth = -7;
            x = (obj_player.x + (obj_player.xscale * -10));
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 6)
        {
            depth = -7;
            x = obj_player.x;
            y = (obj_player.y - 70);
        }
        if (floor(obj_player.image_index) == 7)
        {
            depth = -7;
            x = (obj_player.x + (obj_player.xscale * 10));
            y = (obj_player.y - 70);
        }
        if (obj_player.sprite_index == spr_player_piledriverland)
        {
            thrown = 1;
            hsp = ((-image_xscale) * 4);
            vsp = -5;
        }
    }
    image_xscale = (-obj_player.xscale);
    stunned = 1;
}