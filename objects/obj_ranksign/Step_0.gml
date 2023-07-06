ini_open("saveData.ini");
global.AT_rank = ini_read_string("Ranks", "rank", "none");
ini_close();
if (global.AT_rank == "none")
    visible = false;
else
    visible = true;
if (global.AT_rank == "s")
    image_index = 0;
if (global.AT_rank == "a")
    image_index = 1;
if (global.AT_rank == "b")
    image_index = 2;
if (global.AT_rank == "c")
    image_index = 3;
if (global.AT_rank == "d")
    image_index = 4;