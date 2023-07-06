scr_getinput();
if (global.panic == 1)
{
    with (obj_player)
    {
        if (place_meeting(x, (y + 1), obj_collisionparent) && (((x > (other.x + 32)) && (x < (other.x + 160))) && key_up))
        {
            obj_bonusscore.timestop = 1;
            if ((global.hurtcounter < 3) && (other.hurtpoints == 0))
            {
                other.hurtpoints = 1;
                global.collect += 250;
            }
            if ((global.bonusminutes < 10) && (other.timepoints == 0))
            {
                other.timepoints = 1;
                global.collect += 250;
            }
            if ((global.minutes > 1) && (other.escapetimepoints == 0))
            {
                other.escapetimepoints = 1;
                global.collect += 250;
            }
            if ((global.treasure == 1) && (other.treasurepoints == 0))
            {
                other.treasurepoints = 1;
                global.collect += 250;
            }
            if (global.collect >= 4000)
                global.AT_rank = "s";
            else if (global.collect > 3000)
                global.AT_rank = "a";
            else if (global.collect > 2000)
                global.AT_rank = "b";
            else if (global.collect > 1000)
                global.AT_rank = "c";
            else
                global.AT_rank = "d";
            ini_open("saveData.ini")
            if (global.AT_rank == "s")
                ini_write_string("Ranks", "rank", global.AT_rank);
            if (global.AT_rank == "a" && "s" != ini_read_string("Ranks", "rank", "none"))
                ini_write_string("Ranks", "rank", global.AT_rank);
            if (global.AT_rank == "b" && "s" != ini_read_string("Ranks", "rank", "none") && "a" != ini_read_string("Ranks", "rank", "none"))
                ini_write_string("Ranks", "rank", global.AT_rank);
            if (global.AT_rank == "c" && "s" != ini_read_string("Ranks", "rank", "none") && "a" != ini_read_string("Ranks", "rank", "none") && "b" != ini_read_string("Ranks", "rank", "none"))
                ini_write_string("Ranks", "rank", global.AT_rank);
            if (global.AT_rank == "d" && "s" != ini_read_string("Ranks", "rank", "none") && "a" != ini_read_string("Ranks", "rank", "none") && "b" != ini_read_string("Ranks", "rank", "none") && "c" != ini_read_string("Ranks", "rank", "none"))
                ini_write_string("Ranks", "rank", global.AT_rank);
            ini_close();
            if (!instance_exists(obj_endlevelfade))
            {
                with (instance_create(x, y, obj_endlevelfade))
                {
                    if (room == AT_room1)
                        AT = 1;
                }
            }
            if (state != 64)
			{
                state = 64;
                obj_endlevelfade.alarm[0] = 235;
                image_index = 0;
            }
			global.panic = 0;
        }
    }
}