global.pizzacoin += 1;
obj_player.key_particles = 1;
obj_player.alarm[7] = 30;
instance_destroy();
obj_tv.message = (("YOU HAVE " + string(global.pizzacoin)) + " PIZZA COINS!");
obj_tv.showtext = 1;
obj_tv.alarm[0] = 150;