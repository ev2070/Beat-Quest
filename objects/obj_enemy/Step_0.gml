/// @description Insert description here
// You can write your code in this editor
//x+= move_spd
my_weakness.x = x+30
my_weakness.y = y-20

//if colliding with the correct instrument, destroy self and drop the instrument
if place_meeting(x,y,obj_instrument) {
	var instrument = instance_place(x,y,obj_instrument);
	if instrument.instrument_type = weakness and instrument.released = true {
		
		if (!array_contains(obj_room_manager.enemies, id)) {
			array_push(obj_room_manager.enemies, id);
		}
		
		instance_destroy(self.my_weakness)
		instance_destroy(self)
		instrument.released = false
		instrument.following = false
		audio_play_sound(snd_enemy_hit,0,0)
	}
}
//BASS BRASS GUITAR PIANO
if weakness = "BASS" {sprite_index = spr_bass_enemy
	}
else if weakness = "BRASS" {
	if room != Room_Disco {
	sprite_index = spr_brass_enemy
	}
	else{
		sprite_index = spr_violin_enemy
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

//move toward player
// Get player's position
var target_x = obj_player.x;
var target_y = obj_player.y;

// Calculate distance to player
var distance_to_player = point_distance(x, y, target_x, target_y);

// Movement decision based on distance to player
if (distance_to_player <= follow_distance) {
    // Calculate direction to player
    var move_direction = point_direction(x, y, target_x, target_y);
} else {
    // Random movement direction
    var move_direction = irandom(359);
}

// Calculate potential new positions
var new_x = x + lengthdir_x(move_spd, move_direction);
var new_y = y + lengthdir_y(move_spd, move_direction);

// Horizontal collision check
if (!place_meeting(new_x, y, obj_platform)) {
    x = new_x;  // Move horizontally if no collision
} 

// Vertical collision check
if (!place_meeting(x, new_y, obj_platform)) {
    y = new_y;  // Move vertically if no collision
}

// Destroy self and weakness if previously destroyed
if (obj_room_manager.returning) {
	if (array_contains(obj_room_manager.enemies, id)) {
		instance_destroy(self.my_weakness);
		instance_destroy(self);
	}
}

