/// @description Insert description here	
	
	
	if global.TOTAL_PIECES = 1 {
		audio_sound_gain(happysong_vocal,0,0.1)
	audio_sound_gain(happysong_bass,0,0.1)
	audio_sound_gain(happysong_piano,1,0.1)
	audio_sound_gain(happysong_trumpet,0,0.1)
	}
	else if global.TOTAL_PIECES = 2 {
audio_sound_gain(happysong_vocal,0,0.1)
	audio_sound_gain(happysong_bass,1,0.1)
	audio_sound_gain(happysong_piano,1,0.1)
	audio_sound_gain(happysong_trumpet,0,0.1)
		
	}
	else if global.TOTAL_PIECES = 3 {
audio_sound_gain(happysong_vocal,0,0.1)
	audio_sound_gain(happysong_bass,1,0.1)
	audio_sound_gain(happysong_piano,1,0.1)
	audio_sound_gain(happysong_trumpet,1,0.1)
		
	}
	else if global.TOTAL_PIECES = 4 {
			audio_sound_gain(happysong_vocal,1,0.1)
	audio_sound_gain(happysong_bass,1,0.1)
	audio_sound_gain(happysong_piano,1,0.1)
	audio_sound_gain(happysong_trumpet,1,0.1)
		
	}
	else {
			audio_sound_gain(happysong_vocal,0,0.1)
	audio_sound_gain(happysong_bass,0,0.1)
	audio_sound_gain(happysong_piano,0,0.1)
	audio_sound_gain(happysong_trumpet,0,0.1)
	}
	
	
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
	room = Room_Disco
}