/// @description Insert description here
// You can write your code in this editor

global.TOTAL_PIECES = 0

	audio_play_sound(snd_rave_drums,1,1)
	audio_play_sound(snd_rave_bass,1,1)
	audio_play_sound(snd_rave_chord,1,1)
	audio_play_sound(snd_rave_brass,1,1)
	audio_play_sound(snd_rave_voice,1,1)


	audio_sound_gain(snd_rave_bass,0,0.1)
	audio_sound_gain(snd_rave_chord,0,0.1)
	audio_play_sound(snd_rave_brass,0,0.1)
	audio_sound_gain(snd_rave_voice,0,0.1)

instrument_order = [];
