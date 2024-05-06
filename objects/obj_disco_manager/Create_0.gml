/// @description Insert description here
// You can write your code in this editor

global.TOTAL_PIECES = 0
/*
if room != Room_Disco {
	audio_play_sound(snd_DRUMS,1,1)
	audio_play_sound(snd_BASS,1,1)
	audio_play_sound(snd_ACOUSTIC,1,1)


	//if room = Room2 {
	audio_play_sound(snd_PIANO,1,1)	
	audio_play_sound(snd_BRASS,1,1)
}*/
//else {
if (room != Room_Lock) {
	audio_play_sound(snd_disco_drum,1,1)
	audio_play_sound(snd_disco_bass,1,1)
	audio_play_sound(snd_disco_synth,1,1)
	audio_play_sound(snd_disco_melodu,1,1)
	audio_play_sound(snd_disco_strings,1,1)
//}

	audio_sound_gain(snd_disco_melodu,0,0.1)
	audio_sound_gain(snd_disco_strings,0,0.1)
	audio_sound_gain(snd_disco_synth,0,0.1)
	audio_sound_gain(snd_disco_bass,0,0.1)
} else {
	if (global.prev_room == Room_Disco) {
		audio_play_sound(snd_disco_drum,0.4,2)
		audio_play_sound(snd_disco_bass,0.4,2)
		audio_play_sound(snd_disco_synth,0.4,2)
		audio_play_sound(snd_disco_melodu,0.4,2)
		audio_play_sound(snd_disco_strings,0.4,2)
	}
}

instrument_order = [];
