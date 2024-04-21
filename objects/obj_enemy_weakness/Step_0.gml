/// @description Insert description here
// You cad write your code in this editor
//pick appropriate sprite
if weakness = "BASS" {sprite_index = spr_bass}
else if weakness = "BRASS" {sprite_index = spr_brass}
else if weakness = "GUITAR" {
	if room = Room_Happy or room = Room_Disco {
		sprite_index = spr_singer
	}
	else {
	sprite_index = spr_guitar
	}
}
else if weakness = "PIANO" {sprite_index = spr_piano}