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
	audio_play_sound(rock_drum,1,1)
	audio_play_sound(rock_bass,1,1)
	audio_play_sound(rock_guitar,1,1)
	audio_play_sound(rock_organpiano,1,1)
	audio_play_sound(rocksong_trumpet,1,1)
//}

	audio_sound_gain(rock_bass,0,0.1)
	audio_sound_gain(rock_guitar,0,0.1)
	audio_sound_gain(rock_organpiano,0,0.1)
	audio_sound_gain(rocksong_trumpet,0,0.1)

instrument_order = [];
