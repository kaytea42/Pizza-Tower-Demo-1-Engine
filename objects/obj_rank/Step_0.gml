scr_getinput();
if (floor(image_index) == (image_number - 1))
    image_speed = 0;
if (global.entrance_rank == "s")
    sprite_index = spr_rankS;
if (global.entrance_rank == "a")
    sprite_index = spr_rankA;
if (global.entrance_rank == "b")
    sprite_index = spr_rankB;
if (global.entrance_rank == "c")
    sprite_index = spr_rankC;
if (global.entrance_rank == "d")
    sprite_index = spr_rankD;