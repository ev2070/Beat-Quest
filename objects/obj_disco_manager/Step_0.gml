
		audio_sound_gain(snd_disco_bass,0,0.1)
		audio_sound_gain(snd_disco_synth,0,0.1)
		audio_sound_gain(snd_disco_strings,0,0.1)
		audio_sound_gain(snd_disco_melodu,0,0.1)
		if instance_exists(obj_GUITAR) and obj_GUITAR.instrument_on {
			audio_sound_gain(snd_disco_melodu,1,0.1)
		}
		if instance_exists(obj_PIANO) and obj_PIANO.instrument_on {
			audio_sound_gain(snd_disco_synth,1,0.1)
		}
		if instance_exists(obj_BRASS) and obj_BRASS.instrument_on {
			audio_sound_gain(snd_disco_strings,1,0.1)
		}
		if instance_exists(obj_BASS) and obj_BASS.instrument_on {
			audio_sound_gain(snd_disco_bass,1,0.1)
		}

if keyboard_check_pressed(vk_enter) {
	audio_stop_all()
	room = Room_Disco
	ResetStateArrays(1,1,1);
}