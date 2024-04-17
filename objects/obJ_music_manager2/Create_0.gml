/// @description Insert description here
// You can write your code in this editor
//persistent = true 
global.TOTAL_PIECES = 0
instance_create_depth(100,100,0,obj_player)
currently_playing = snd_drumBLoop

//if room = Room1 {
/*
audio_sound_gain(snd_drumBLoop, 0, 0.1);
		audio_sound_gain(snd_drum2BLoop, 0, 0.1);
		audio_sound_gain(snd_drumChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumAhhChordLoop, 0, 0.1);
		audio_sound_gain(snd_drumBassLoop, 1, 0.1);

*/
audio_play_sound(snd_drumBLoop,1,1)
audio_play_sound(snd_drum2BLoop,1,1)
audio_play_sound(snd_drumChordLoop,1,1)


//if room = Room2 {
audio_play_sound(snd_drumAhhChordLoop,1,1)	
audio_play_sound(snd_drumBassLoop,1,1)
audio_play_sound(fullLoop,1,1)