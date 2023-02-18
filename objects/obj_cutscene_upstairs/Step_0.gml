scr_getinput()
obj_player.state = 47;
if instance_exists(obj_pizzakinshroom)
    obj_pizzakinshroom.visible = 0;
if instance_exists(obj_pizzakincheese)
    obj_pizzakincheese.visible = 0;
if instance_exists(obj_pizzakintomato)
    obj_pizzakintomato.visible = 0;
if instance_exists(obj_pizzakinsausage)
    obj_pizzakinsausage.visible = 0;
if instance_exists(obj_pizzakinpineapple)
    obj_pizzakinpineapple.visible = 0;
obj_player.x = x;
obj_player.y = y;
obj_player.player_y = target_y;
obj_player.player_x = target_x;
obj_player.targetRoom = targetRoom;

