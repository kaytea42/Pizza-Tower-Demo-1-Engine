with (obj_player) {
    if (room == rank_room) {
        obj_player.x = 480;
        obj_player.y = 270;
    }
}
obj_camera.visible = 0;
if (fadealpha > 1) {
    fadein = 1;
    if (room != rank_room) room = rank_room;
    audio_stop_all();
    global.panic = 0;
}
if (fadein == 0) fadealpha += 0.1;
else if (fadein == 1) fadealpha -= 0.1;