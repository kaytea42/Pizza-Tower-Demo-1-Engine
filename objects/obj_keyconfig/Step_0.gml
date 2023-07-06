scr_getinput();
if (remapphase == 0)
{
    sprite_index = spr_pressup;
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_up = keyboard_key;
        remapphase += 1;
    }
}
else if (remapphase == 1)
{
    sprite_index = spr_pressright;
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_right = keyboard_key;
        remapphase += 1;
    }
}
else if (remapphase == 2)
{
    sprite_index = spr_pressleft;
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_left = keyboard_key;
        remapphase += 1;
    }
}
else if (remapphase == 3)
{
    sprite_index = spr_pressdown;
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_down = keyboard_key;
        remapphase += 1;
    }
}
else if (remapphase == 4)
{
    sprite_index = spr_pressjump;
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_jump = keyboard_key;
        remapphase += 1;
    }
}
else if (remapphase == 5)
{
    sprite_index = spr_pressslap;
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_slap = keyboard_key;
        remapphase += 1;
    }
}
else if (remapphase == 6)
{
    sprite_index = spr_pressdash;
    if keyboard_check_pressed(vk_anykey)
    {
        global.key_attack = keyboard_key;
        remapphase += 1;
    }
}
else if (remapphase == 7)
{
    sprite_index = spr_ok;
    if (key_jump)
		instance_destroy();
    if (key_slap)
		remapphase = 0;
	obj_menuselections.timed = 1;
}
ini_open("saveData.ini");
ini_write_string("ControlsKeys", "up", global.key_up);
ini_write_string("ControlsKeys", "right", global.key_right);
ini_write_string("ControlsKeys", "left", global.key_left);
ini_write_string("ControlsKeys", "down", global.key_down);
ini_write_string("ControlsKeys", "jump", global.key_jump);
ini_write_string("ControlsKeys", "slap", global.key_slap);
ini_write_string("ControlsKeys", "attack", global.key_attack);
ini_write_string("ControlsKeys", "shoot", global.key_shoot);
ini_write_string("ControlsKeys", "taunt", global.key_taunt);
ini_close();