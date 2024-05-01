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

// Determine movement direction
var move_direction = distance_to_player <= follow_distance ? point_direction(x, y, target_x, target_y) : irandom(359);

// Calculate potential new positions
var new_x = x + lengthdir_x(move_spd, move_direction);
var new_y = y + lengthdir_y(move_spd, move_direction);

// Check collision with platforms before moving
if (!place_meeting(new_x, y, obj_platform)) {
    x = new_x;  // Allow horizontal movement if no platform collision
}
if (!place_meeting(x, new_y, obj_platform)) {
    y = new_y;  // Allow vertical movement if no platform collision
}

// Apply repulsion from other enemies
var repulsion_range = 48; // Range of repulsion effect
var repulsion_force = 0.5; // Strength of the repulsion
var other_enemy;

with (obj_enemy) {
    if (id != other.id && point_distance(x, y, other.x, other.y) < repulsion_range) {
        var angle = point_direction(x, y, other.x, other.y);
        var dx = lengthdir_x(repulsion_force, angle);
        var dy = lengthdir_y(repulsion_force, angle);

        // Only apply repulsion if no collision with platforms would occur
        if (!place_meeting(x - dx, y - dy, obj_platform)) {
            x -= dx;
            y -= dy;
        }
    }
}
// Destroy self and weakness if previously destroyed
if (obj_room_manager.returning) {
	if (array_contains(obj_room_manager.enemies, id)) {
		instance_destroy(self.my_weakness);
		instance_destroy(self);
	}
}

