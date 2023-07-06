scr_getinput();
if (floor(image_index) == (image_number - 1))
    image_speed = 0;
if (global.AT_rank == "s")
    sprite_index = spr_rankS;
if (global.AT_rank == "a")
    sprite_index = spr_rankA;
if (global.AT_rank == "b")
    sprite_index = spr_rankB;
if (global.AT_rank == "c")
    sprite_index = spr_rankC;
if (global.AT_rank == "d")
    sprite_index = spr_rankD;