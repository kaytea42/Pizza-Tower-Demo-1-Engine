if ((ID.state != 89) || (ID.stunned < 40)) {
    ID.birdcreated = 0;
    instance_destroy();
}
x = ID.x;
y = (ID.y - 40);