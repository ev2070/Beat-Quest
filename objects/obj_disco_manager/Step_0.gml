/// @description Insert description here	
	
	
	if global.TOTAL_PIECES = 1 {
		audio_sound_gain(snd_disco_bass, 1, 0.1);
	}
	else if global.TOTAL_PIECES = 2 {
		audio_sound_gain(snd_disco_bass, 1, 0.1);
		audio_sound_gain(snd_disco_synth, 1, 0.1);
		
	}
	else if global.TOTAL_PIECES = 3 {
		audio_sound_gain(snd_disco_bass, 1, 0.1);
		audio_sound_gain(snd_disco_synth, 1, 0.1);
		audio_sound_gain(snd_disco_strings, 1, 0.1);
		
	}
	else if global.TOTAL_PIECES = 4 {
		audio_sound_gain(snd_disco_bass, 1, 0.1);
		audio_sound_gain(snd_disco_synth, 1, 0.1);
		audio_sound_gain(snd_disco_strings, 1, 0.1);
		audio_sound_gain(snd_disco_melodu, 1, 0.1);
		
	}
	else {
	audio_sound_gain(snd_disco_melodu,0,0.1)
	audio_sound_gain(snd_disco_strings,0,0.1)
	audio_sound_gain(snd_disco_synth,0,0.1)
	audio_sound_gain(snd_disco_bass,0,0.1)
	}


if keyboard_check_pressed(vk_enter) {
	audio_stop_all()
	room = Room_Disco
}