function scr_sound() {
	var snd;
	snd = argument[irandom((argument_count - 1))];
	audio_play_sound(snd, 1, false);
}