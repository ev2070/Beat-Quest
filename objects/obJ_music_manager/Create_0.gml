/// @description Insert description here
// You can write your code in this editor
//persistent = true 
global.TOTAL_PIECES = 0
instance_create_depth(100,100,0,obj_player)
currently_playing = snd_drumBLoop

if room = Room1 {

audio_play_sound(snd_drumLoop,1,1)
audio_play_sound(snd_drumpianoLoop,1,1)
audio_play_sound(snd_drumpianoguiLoop,1,1)

//if room = Room2 {
audio_play_sound(snd_plusBassLoop,1,1)	
audio_play_sound(snd_complete,1,1)
}
//}
audio_sound_gain(snd_drumLoop, 1, 0.5);
		audio_sound_gain(snd_drumpianoLoop, 0, 0.1);
		audio_sound_gain(snd_drumpianoguiLoop, 0, 0.1);
		audio_sound_gain(snd_plusBassLoop, 0, 0.1);
		audio_sound_gain(snd_complete, 0, 0.1);