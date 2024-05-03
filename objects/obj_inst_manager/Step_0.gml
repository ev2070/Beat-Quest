/// @description Insert description here
// You can write your code in this editor
	audio_sound_gain(snd_ACOUSTIC,0,0.1)
	audio_sound_gain(snd_BASS,0,0.1)
	audio_sound_gain(snd_PIANO,0,0.1)
	audio_sound_gain(snd_BRASS,0,0.1)
	if obj_GUITAR.instrument_on {
		audio_sound_gain(snd_ACOUSTIC,1,0.1)
	}
	if obj_PIANO.instrument_on {
		audio_sound_gain(snd_PIANO,1,0.1)
	}
	if obj_BRASS.instrument_on {
		audio_sound_gain(snd_BRASS,1,0.1)
	}
	if obj_BASS.instrument_on {
		audio_sound_gain(snd_BASS,1,0.1)
	}

if keyboard_check_pressed(vk_enter) {
	audio_stop_all()
	room = Room_SeparateInstrument
	ResetStateArrays(1,1,1);
}