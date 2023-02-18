if (global.bonusseconds < 0)
{
    global.bonusseconds = 59;
    global.bonusminutes -= 1;
}
if (global.bonusseconds > 59)
{
    global.bonusminutes += 1;
    global.bonusseconds -= 59;
}
if (showtext == 1)
{
    xi = (500 + random_range(1, -1));
    if (yi > 500)
        yi -= 5;
}
if (showtext == 0)
    xi = (500 + random_range(1, -1));