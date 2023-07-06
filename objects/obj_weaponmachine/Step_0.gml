if (place_meeting(x, (y + 1), obj_player) && global.pizzacoin >= 4)
{
    global.pizzacoin -= 4;
    image_speed = 0.35;
}
else if (place_meeting(x, (y + 1), obj_player) && image_speed == 0 && global.pizzacoin != 4)
{
    obj_tv.message = (("YOU NEED " + string((4 - global.pizzacoin))) + " MORE PIZZA COINS!");
    obj_tv.showtext = 1;
    obj_tv.alarm[0] = 150;
}