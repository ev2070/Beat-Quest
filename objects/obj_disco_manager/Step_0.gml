/// @description Insert description here	
	
	
	if obj_BASS.instrument_on {
		audio_sound_gain(snd_disco_bass, 1, 0.1);
	}
	else {
	audio_sound_gain(snd_disco_bass,0,0.1)
	}
	if obj_PIANO.instrument_on {
		audio_sound_gain(snd_disco_synth, 1, 0.1);
		
	}
	else {
	audio_sound_gain(snd_disco_synth,0,0.1)
	}
	if obj_BRASS.instrument_on {
		audio_sound_gain(snd_disco_strings, 1, 0.1);
	}
	else {
	audio_sound_gain(snd_disco_strings,0,0.1)
	}
	if obj_GUITAR.instrument_on {
		audio_sound_gain(snd_disco_melodu, 1, 0.1);
	}
	else {
	audio_sound_gain(snd_disco_melodu,0,0.1)
	}


if keyboard_check_pressed(vk_enter) {
	audio_stop_all()
	room = Room_Disco
	ResetStateArrays(1,1,1);
}