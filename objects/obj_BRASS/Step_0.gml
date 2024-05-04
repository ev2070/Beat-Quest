/// @description Insert description here
// You can write your code in this editor
event_inherited();
//instrument_on = false
instrument_type = "BRASS"
if room = Room_Disco || global.prev_room == Room_Disco {
	sprite_index = spr_violin_player
}
else sprite_index = spr_brass_player
if room = Room_Rave  {
	sprite_index = spr_brass_player
}