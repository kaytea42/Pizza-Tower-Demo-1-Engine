if (place_meeting(x, (y + 1), obj_player) && (!instance_exists(obj_crashingplane)))
    instance_create_layer(obj_player.x, obj_player.y, "Instances_2", obj_crashingplane);