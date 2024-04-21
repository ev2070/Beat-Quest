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