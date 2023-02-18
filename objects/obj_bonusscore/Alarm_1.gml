if (timestop == 0) {
    global.bonusseconds += 1;
    if (global.bonusseconds > 59) {
        global.bonusseconds = 0;
        global.bonusminutes += 1;
    }
}
alarm[1] = 60;