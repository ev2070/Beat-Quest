/// @description Insert description here
// You can write your code in this editor

/*if !audio_is_playing(currently_playing) {
	audio_play_sound(snd_drumBLoop,1,1)
	audio_play_sound(snd_drum2BLoop,1,1)
}*/
//if room = Room1 {
/*
	if global.TOTAL_PIECES = 0 {
		audio_sound_gain(snd_drumLoop, 1, 0.5);
		audio_sound_gain(snd_drumpianoLoop, 0, 0.1);
		audio_sound_gain(snd_drumpianoguiLoop, 0, 0.1);
		audio_sound_gain(snd_plusBassLoop, 0, 0.1);
		audio_sound_gain(snd_complete, 0, 0.1);
	}
	else if global.TOTAL_PIECES = 1 {
		audio_sound_gain(snd_drumBLoop, 0, 0.1);
		audio_sound_gain(snd_drum2BLoop, 1, 0.1);
		audio_sound_gain(snd_drumChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumAhhChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumBassLoop, 0, 0.1);
	}
	else if global.TOTAL_PIECES = 2 {
		audio_sound_gain(snd_drumBLoop, 0, 0.1);
		audio_sound_gain(snd_drum2BLoop, 0, 0.1);
		audio_sound_gain(snd_drumChordLoop, 1, 0.1);
		audio_sound_gain(snd_drumAhhChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumBassLoop, 0, 0.1);
	}
	else if global.TOTAL_PIECES = 3 {
		audio_sound_gain(snd_drumBLoop, 0, 0.1);
		audio_sound_gain(snd_drum2BLoop, 0, 0.1);
		audio_sound_gain(snd_drumChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumAhhChordLoop, 1, 0.1);
		audio_sound_gain(snd_drumBassLoop, 0, 0.1);
	}
	else if global.TOTAL_PIECES = 4 {
		audio_sound_gain(snd_drumBLoop, 0, 0.1);
		audio_sound_gain(snd_drum2BLoop, 0, 0.1);
		audio_sound_gain(snd_drumChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumAhhChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumBassLoop, 1, 0.1);
	}
//}
*/
if room = Room_rave {
if global.TOTAL_PIECES = 0 {
		audio_sound_gain(snd_drumLoop, 1, 0.5);
		audio_sound_gain(snd_drumpianoLoop, 0, 0.1);
		audio_sound_gain(snd_drumpianoguiLoop, 0, 0.1);
		audio_sound_gain(snd_plusBassLoop, 0, 0.1);
		audio_sound_gain(snd_complete, 0, 0.1);
}
else if  global.TOTAL_PIECES = 1 {
	audio_sound_gain(snd_drumLoop, 0, 0.0);
	audio_sound_gain(snd_drumpianoLoop, 1, 0);
	audio_sound_gain(snd_drumpianoguiLoop, 0, 0);
	audio_sound_gain(snd_plusBassLoop, 0, 0);
	audio_sound_gain(snd_complete, 0, 0);
}
else if  global.TOTAL_PIECES = 2 {
	audio_sound_gain(snd_drumLoop, 0, 0);
	audio_sound_gain(snd_drumpianoLoop, 0, 0);
	audio_sound_gain(snd_drumpianoguiLoop, 1, 0);
	audio_sound_gain(snd_plusBassLoop, 0, 0);
	audio_sound_gain(snd_complete, 0, 0);
}
else if  global.TOTAL_PIECES = 3 {
	audio_sound_gain(snd_drumLoop, 0, 0);
	audio_sound_gain(snd_drumpianoLoop, 0, 0);
	audio_sound_gain(snd_drumpianoguiLoop, 0, 0);
	audio_sound_gain(snd_plusBassLoop, 1, 0);
	audio_sound_gain(snd_complete, 0, 0.1);
}
else if  global.TOTAL_PIECES = 4 {
	audio_sound_gain(snd_drumLoop, 0, 0);
	audio_sound_gain(snd_drumpianoLoop, 0, 0);
	audio_sound_gain(snd_drumpianoguiLoop, 0, 0);
	audio_sound_gain(snd_plusBassLoop, 0, 0);
	audio_sound_gain(snd_complete, 1, 0);
}
}
	/*
}
if room = Room2 {
	if global.TOTAL_PIECES = 3 {
		audio_sound_gain(snd_drumChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumAhhChordLoop, 1, 0.1);
		audio_sound_gain(snd_drumBassLoop, 0, 0.1);
	}
	else if global.TOTAL_PIECES = 4 {
		audio_sound_gain(snd_drumChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumAhhChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumBassLoop, 1, 0.1);
	}
}*/

