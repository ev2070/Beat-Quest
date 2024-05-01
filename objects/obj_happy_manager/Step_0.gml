/// @description Insert description here	

	if obj_BASS.instrument_on {
		audio_sound_gain(happysong_bass, 1, 0.1);
	}
	else {
	audio_sound_gain(happysong_bass,0,0.1)
	}
	if obj_PIANO.instrument_on {
		audio_sound_gain(happysong_piano, 1, 0.1);
	}
	else {
	audio_sound_gain(happysong_piano,0,0.1)
	}
	if obj_BRASS.instrument_on {
		audio_sound_gain(happysong_trumpet, 1, 0.1);
	}
	else {
	audio_sound_gain(happysong_trumpet,0,0.1)
	}
	if obj_GUITAR.instrument_on {
		audio_sound_gain(happysong_vocal, 1, 0.1);
	}
	else {
	audio_sound_gain(happysong_vocal,0,0.1)
	}




if keyboard_check_pressed(vk_enter) {
	audio_stop_all()
	room = Room_Rave
	ResetStateArrays();
}