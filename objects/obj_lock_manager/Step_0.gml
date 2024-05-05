// obj_lock_manager Step event

if (keyboard_check_pressed(vk_escape)) {
	// Must reset these persistent arrays before proceeding to next room!
	audio_stop_all();
	ResetStateArrays(1,1,1);
	room = global.next_room;
}

// Create instances of the collected instruments
if (instance_number(obj_instrument) < array_length(obj_room_manager.collected_instruments)) {
	for (var _i = 0; _i < array_length(obj_room_manager.collected_instruments); _i++) {
		var _instr_instance = instance_create_depth(0, 0, -1, obj_room_manager.collected_instruments[_i]);
		
		// Set following behavior
		_instr_instance.following = true
		_instr_instance.released = false
		_instr_instance.pickup_timer = _instr_instance.pickup_timer_max
		obj_player.collected += 1
		_instr_instance.position_num = obj_player.collected
		_instr_instance.collided = true
		// obj_player.move_dir = "right" // Set in obj_player
	}
}

/*
// Allowed to press a button when there is no current button
// or when the current button's sound has stopped playing
// Note: curr_button gets set and a sound plays when user presses a button
if (curr_button == noone || !audio_is_playing(curr_button.snd)) {
	
	// Play music sequence
	if (obj_play_button.playing) {
		if (curr_button_index < button_seq_length && !unlocking_mode) {
			curr_button = button_sequence[curr_button_index];
			audio_play_sound(curr_button.snd,1,false);
			curr_button_index++;
		}
	
		// Music sequence is done so reset the current button and its pointer
		else if (curr_button_index == button_seq_length && !unlocking_mode) {
			curr_button_index = 0;
			curr_button = noone;
			unlocking_mode = true;
			obj_play_button.playing = false;
		}
	}
	
	// Now let the player repeat the music sequence to unlock the next room
	else if (unlocking_mode) {
	
		if (curr_button_index < button_seq_length) {
		
			// If correct button pressed, increment pointer
			if (curr_button == button_sequence[curr_button_index]) {
		
				curr_button_index++;
				curr_button = noone;
		
			// If incorrect button pressed, player failed to unlock this time
			} else if (curr_button != noone) {
				
				tries_left--;
				
				// If player has no more tries left, return to previous room
				if (tries_left == 0) {

					audio_stop_all();
					audio_play_sound(snd_drum_bad,1,false);
					room = global.prev_room;
					array_copy(obj_room_manager.position_numbers, 0, obj_room_manager.collected_instruments, 0, array_length(obj_room_manager.collected_instruments));
					obj_room_manager.returning = true;
					
				// If player has some tries left, they can press the play button again
				} else {
					audio_play_sound(snd_drum_bad,1,false);
					curr_button_index = 0;
					curr_button = noone;
					unlocking_mode = false;
				}
			}
		
		
		} else { // Unlocked next room
		
			audio_stop_all();
			ResetStateArrays(1,1,1);
			room = global.next_room;

		}
	}
}
*/

frame_count++;