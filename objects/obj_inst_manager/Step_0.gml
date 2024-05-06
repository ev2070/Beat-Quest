
if (room != Room_Lock) {
	audio_sound_gain(snd_ACOUSTIC,0,0.1)
	audio_sound_gain(snd_BASS,0,0.1)
	audio_sound_gain(snd_PIANO,0,0.1)
	audio_sound_gain(snd_BRASS,0,0.1)
	if instance_exists(obj_GUITAR) and obj_GUITAR.instrument_on {
		audio_sound_gain(snd_ACOUSTIC,1,0.1)
	}
	if instance_exists(obj_PIANO) and obj_PIANO.instrument_on {
		audio_sound_gain(snd_PIANO,1,0.1)
	}
	if instance_exists(obj_BRASS) and obj_BRASS.instrument_on {
		audio_sound_gain(snd_BRASS,1,0.1)
	}
	if instance_exists(obj_BASS) and obj_BASS.instrument_on {
		audio_sound_gain(snd_BASS,1,0.1)
	}
} else {
	if (global.prev_room == Room_SeparateInstrument) {
		audio_sound_gain(snd_ACOUSTIC,0.4,2);
		audio_sound_gain(snd_PIANO,0.4,2);
		audio_sound_gain(snd_BRASS,0.4,2);
		audio_sound_gain(snd_BASS,0.4,2);
		audio_sound_gain(snd_DRUMS,0.4,2);
	}
}

	if keyboard_check_pressed(vk_enter) {
		audio_stop_all()
		room = Room_SeparateInstrument
		ResetStateArrays(1,1,1);
	}
