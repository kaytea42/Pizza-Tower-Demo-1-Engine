if (obj_player.bbox_bottom > y)
{
    instance_destroy(obj_onewaysolid);
    obj_onewaywall.created = 0;
}