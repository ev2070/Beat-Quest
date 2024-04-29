/// @description Insert description here
// You can write your code in this editor
//x+= move_spd
my_weakness.x = x+30
my_weakness.y = y-20

//if colliding with the correct instrument, destroy self and drop the instrument
if place_meeting(x,y,obj_instrument) {
var instrument = instance_place(x,y,obj_instrument);
if instrument.instrument_type = weakness and instrument.released = true {
	instance_destroy(self.my_weakness)
	instance_destroy(self)
	instrument.released = false
	instrument.following = false
}
}
//BASS BRASS GUITAR PIANO
if weakness = "BASS" {sprite_index = spr_bass_enemy
	}
else if weakness = "BRASS" {
	if room != Room_Disco {
	sprite_index = spr_brass_enemy
	}
}
else if weakness = "GUITAR" {
	if room = Room_Rave {
		sprite_index = spr_singer_enemy
	}
	else {
	sprite_index = spr_banjo_enemy
	}
}
else if weakness = "PIANO" {sprite_index = spr_piano_enemy}

