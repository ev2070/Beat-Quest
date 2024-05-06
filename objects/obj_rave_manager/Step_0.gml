
if (room != Room_Lock) {
	audio_sound_gain(snd_rave_voice,0,0.1)
	audio_sound_gain(snd_rave_bass,0,0.1)
	audio_sound_gain(snd_rave_chord,0,0.1)
	audio_sound_gain(snd_rave_brass,0,0.1)
	if instance_exists(obj_GUITAR) and obj_GUITAR.instrument_on {
		audio_sound_gain(snd_rave_voice,1,0.1)
	}
	if instance_exists(obj_PIANO) and obj_PIANO.instrument_on {
		audio_sound_gain(snd_rave_chord,1,0.1)
	}
	if instance_exists(obj_BRASS) and obj_BRASS.instrument_on {
		audio_sound_gain(snd_rave_brass,0.6,0.1)
	}
	if instance_exists(obj_BASS) and obj_BASS.instrument_on {
		audio_sound_gain(snd_rave_bass,1,0.1)
	}
} else {
	if (global.prev_room == Room_Rave) {
		audio_play_sound(snd_rave_brass,0.4,2)
		audio_play_sound(snd_rave_bass,0.4,2)
		audio_play_sound(snd_rave_chord,0.4,2)
		audio_play_sound(snd_rave_voice,0.4,2)
		audio_play_sound(snd_rave_drums,0.4,2)
	}
}

if keyboard_check_pressed(vk_enter) {
	audio_stop_all()
	room = Room_Rave
	ResetStateArrays(1,1,1);
}