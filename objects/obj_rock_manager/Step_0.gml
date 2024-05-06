
if (room != Room_Lock) {
	audio_sound_gain(rock_guitar,0,0.1)
	audio_sound_gain(rock_bass,0,0.1)
	audio_sound_gain(rock_organpiano,0,0.1)
	audio_sound_gain(rocksong_trumpet,0,0.1)
	if instance_exists(obj_GUITAR) and obj_GUITAR.instrument_on {
		audio_sound_gain(rock_guitar,0.6,0.1)
	}
	if instance_exists(obj_PIANO) and obj_PIANO.instrument_on {
		audio_sound_gain(rock_organpiano,1,0.1)
	}
	if instance_exists(obj_BRASS) and obj_BRASS.instrument_on {
		audio_sound_gain(rocksong_trumpet,1,0.1)
	}
	if instance_exists(obj_BASS) and obj_BASS.instrument_on {
		audio_sound_gain(rock_bass,1,0.1)
	}
} else {
	if (global.prev_room == Room_jazzrocksomething) {
		audio_sound_gain(rock_bass,0.4,2)
		audio_sound_gain(rock_drum,0.4,2)
		audio_sound_gain(rock_guitar,0.4,2)
		audio_sound_gain(rock_organpiano,0.4,2)
		audio_sound_gain(rocksong_trumpet,0.4,2)
	}
}


if keyboard_check_pressed(vk_enter) {
	audio_stop_all()
	room = Room_jazzrocksomething
	ResetStateArrays(1,1,1);
}