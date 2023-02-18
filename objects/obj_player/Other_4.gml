x = player_x;
y = player_y;
if (global.shroomfollow == 1) instance_create(x, y, obj_pizzakinshroom);
if (global.cheesefollow == 1) instance_create(x, y, obj_pizzakincheese);
if (global.tomatofollow == 1) instance_create(x, y, obj_pizzakintomato);
if (global.sausagefollow == 1) instance_create(x, y, obj_pizzakinsausage);
if (global.pineapplefollow == 1) instance_create(x, y, obj_pizzakinpineapple);