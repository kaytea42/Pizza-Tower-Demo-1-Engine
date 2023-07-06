with (obj_player)
{
    hsp = 0;
    global.treasure = 1;
    if place_meeting(x, (y + 1), obj_collisionparent)
    {
        if (other.sprite_index == spr_treasure1)
            other.alarm[0] = 300;
        if (other.sprite_index == spr_treasure1)
            state = 9;
        other.sprite_index = spr_treasure1pick;
        other.x = obj_player.x;
        other.y = (obj_player.y - 35);
    }
}
obj_tv.showtext = 1;
obj_tv.message = "YOU GOT THE TOWER SECRET TREASURE!!!";
obj_tv.tvsprite = spr_tvtreasure;
obj_tv.alarm[0] = 150;
obj_tv.image_speed = 0.1;