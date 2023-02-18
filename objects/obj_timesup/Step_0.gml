if (!place_meeting(x, (y + 1), obj_wall))
    image_speed = 0;
else if (floor(image_index) != 8)
    image_speed = 0.35;
else
    image_speed = 0;
scr_collideandmove();