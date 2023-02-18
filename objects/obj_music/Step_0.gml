audio_master_gain(0.5);
if (jingle == 0) {
    if (room == Realtitlescreen)
		currentlyplaying = music_title;
	if global.panic == 0 {
        if (room == PP_room1)
            currentlyplaying = music_funiculi;
        if ((room == level_transition_up2 || room == AT_roomboss) && (!instance_exists(obj_noise_normalT1)))
            currentlyplaying = music_towertheme;
        if (room == level_transition_up || room == AT_room10 || room == AT_room11 || room == AT_room18 || room == AT_room19 || room == AT_room12 || room == AT_room16 || (room == AT_room17 && obj_player.state != 50 && obj_player.state != 47))
            currentlyplaying = music_coldspag;
        if (instance_exists(obj_noise_normalT1) && obj_player.sprite_index != spr_player_idle)
            currentlyplaying = music_knight;
        if instance_exists(obj_noise_normalT1)
        {
            if (obj_noise_normalT1.hspeed != 0)
                currentlyplaying = music_noiseappear;
        }
        if (room == AT_pillar)
            currentlyplaying = music_scary;
        if (room == AT_room1 || room == AT_room2 || room == AT_room9 || (room == AT_room6 && obj_player.state != 50))
            currentlyplaying = music_coldspag2;
        if (room == credit_room)
			currentlyplaying = music_title;
	}
}
if ((instance_exists(obj_player) && (obj_player.state == 50)) && (jingle == 0)) {
    audio_stop_all();
    jingle = 1;
}
else if (instance_exists(obj_player) && ((obj_player.state != 50) && ((room != rank_room) && (room != timesuproom)))) jingle = 0;
if ((global.panic == 1) && ((currentlyplaying != music_tutorial) && (!audio_is_playing(music_noiseappear)))) currentlyplaying = sound_firstescapetheme;
if global.panic == 0 && audio_is_playing(sound_firstescapetheme) audio_stop_sound(sound_firstescapetheme);
if (jingle == 0) {
    if (!audio_is_playing(currentlyplaying)) {
        audio_stop_all();
        scr_sound(currentlyplaying);
    }
    if audio_is_paused(currentlyplaying) {
        audio_pause_all();
        audio_resume_sound(currentlyplaying);
	}
}
if (room == rank_room) {
    currentlyplaying = music_title;
    jingle = 1;
    if (global.entrance_rank == "s") {
        if (!audio_is_playing(music_ranks)) audio_play_sound(music_ranks, 1, false);
    }
    else if (global.entrance_rank == "a") {
        if (!audio_is_playing(music_ranka)) audio_play_sound(music_ranka, 1, false);
    }
    else if ((global.entrance_rank == "b") || (global.entrance_rank == "c"))  {
        if (!audio_is_playing(music_rankb)) audio_play_sound(music_rankb, 1, false);
    }
    else if (global.entrance_rank == "d") {
        if (!audio_is_playing(music_rankd)) audio_play_sound(music_rankd, 1, false);
    }
}
if (room == timesuproom) {
    audio_stop_all();
    jingle = 1;
}