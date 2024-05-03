/// @description Insert description here	
	if obj_BASS.instrument_on {
		audio_sound_gain(rock_bass, 1, 0.1);
	}
	else {
	audio_sound_gain(rock_bass,0,0.1)
	}
	if obj_PIANO.instrument_on {
		audio_sound_gain(rock_organpiano, 1, 0.1);
		
	}
	else {
	audio_sound_gain(rock_organpiano,0,0.1)
	}
	if obj_BRASS.instrument_on {
		audio_sound_gain(rocksong_trumpet, 1, 0.1);
	}
	else {
	audio_sound_gain(rocksong_trumpet,0,0.1)
	}
	if obj_GUITAR.instrument_on {
		audio_sound_gain(rock_guitar, 1, 0.1);
	}
	else {
	audio_sound_gain(rock_guitar,0,0.1)
	}

if keyboard_check_pressed(vk_enter) {
	audio_stop_all()
	room = Room_jazzrocksomething
	ResetStateArrays(1,1,1);
}