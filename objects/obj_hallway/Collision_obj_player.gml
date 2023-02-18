if (createdfadeout == 0)
{
    createdfadeout = 1;
    instance_create(x, y, obj_fadeout);
}
with (obj_player)
{
    player_y = other.target_y;
    player_x = other.target_x;
    targetRoom = other.targetRoom;
} 