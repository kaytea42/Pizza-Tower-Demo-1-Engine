ini_open("saveData.ini");
global.entrance_rank = ini_read_string("Ranks", "rank", "none");
ini_close();
if (global.entrance_rank == "none")
    visible = 0;
else
    visible = 1;
if (global.entrance_rank == "s")
    image_index = 0;
if (global.entrance_rank == "a")
    image_index = 1;
if (global.entrance_rank == "b")
    image_index = 2;
if (global.entrance_rank == "c")
    image_index = 3;
if (global.entrance_rank == "d")
    image_index = 4;