hsp = 0;
vsp = 0;
grav = 0.4;
throwed = 0;
image_speed = 0.35;
image_xscale = -1;
if (global.shroomfollow == 1)
    sprite_index = spr_pizzakinshroom_panic;
else if (global.cheesefollow == 1)
    sprite_index = spr_pizzakincheese_panic;
else if (global.tomatofollow == 1)
    sprite_index = spr_pizzakintomato_panic;
else if (global.sausagefollow == 1)
    sprite_index = spr_pizzakinsausage_panic;
else if (global.pineapplefollow == 1)
    sprite_index = spr_pizzakinpineapple_panic;
depth = -1;