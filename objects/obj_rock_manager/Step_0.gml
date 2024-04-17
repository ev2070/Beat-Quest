/// @description Insert description here	
	
	
	if global.TOTAL_PIECES = 1 {
			audio_sound_gain(rock_organpiano,1,0.1)
	}
	else if global.TOTAL_PIECES = 2 {
	audio_sound_gain(rock_organpiano,1,0.1)
	audio_sound_gain(rock_bass,1,0.1)
		
	}
	else if global.TOTAL_PIECES = 3 {
	audio_sound_gain(rock_organpiano,1,0.1)
	audio_sound_gain(rock_bass,1,0.1)
	audio_sound_gain(rocksong_trumpet,1,0.1)
		
	}
	else if global.TOTAL_PIECES = 4 {
	audio_sound_gain(rock_organpiano,1,0.1)
	audio_sound_gain(rock_bass,1,0.1)
	audio_sound_gain(rocksong_trumpet,1,0.1)
	audio_sound_gain(rock_guitar,1,0.1)
		
	}
	else {
			audio_sound_gain(rock_bass,0,0.1)
	audio_sound_gain(rock_guitar,0,0.1)
	audio_sound_gain(rock_organpiano,0,0.1)
	audio_sound_gain(rocksong_trumpet,0,0.1)
	}


if keyboard_check_pressed(vk_enter) {
	audio_stop_all()
	room = Room_Disco
}