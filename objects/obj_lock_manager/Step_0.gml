// obj_lock_manager Step event

if (room == Room_Lock) {
	if (keyboard_check_pressed(vk_escape)) {
		// Must reset these persistent arrays before proceeding to next room!
		audio_stop_all();
		ResetStateArrays(1,1,1);
		room = global.next_room;
	}

	// Create instances of the collected instruments
	if (instance_number(obj_instrument) < collected_length) {
		for (var _i = 0; _i < collected_length; _i++) {
			var _instr_instance = instance_create_depth(0, obj_player.y, -1, obj_room_manager.collected_instruments[_i]);
		
			// Set following behavior
			_instr_instance.following = true
			_instr_instance.released = false
			_instr_instance.pickup_timer = _instr_instance.pickup_timer_max
			obj_player.collected += 1
			_instr_instance.position_num = obj_player.collected
			_instr_instance.collided = true
			_instr_instance.returning = false
			// obj_player.move_dir = "right" // Set in obj_player
		}
	}

	// Pause to begin processing an instrument
	if (obj_room_manager.pause) {
	
		// Check if processing is allowed
		if (!(curr_index < combo_length && curr_index < collected_length)) {
			obj_room_manager.pause = false;
			failed = true;
			audio_play_sound(snd_drum_bad, 1, false);
	
		} else {
	
			// Start processing an instrument that has not passed
			if (!audio_is_playing(snd_lock_vocals) && !passed) {
			
				// If the collected instrument matches the one in the lock combo
				// play correct SFX and set pass.
				// If this is the last instrument in the combo, player succeeded
				var _curr_correct_instr = global.combo[curr_index];
				var _curr_collected_instr = obj_room_manager.collected_instruments[curr_index];
			
				if (_curr_collected_instr == _curr_correct_instr) {
				
					audio_play_sound(snd_lock_vocals,1,false);
					passed = true;
					if (combo_length == collected_length && curr_index == array_length(global.combo)-1) {
						succeeded = true;
					}
			
				// If the collected instrument does not match the one in the lock combo,
				// the player failed to unlock the next room
				} else {
					obj_room_manager.pause = false;
					failed = true;
					audio_play_sound(snd_drum_bad, 1, false);
				}
		
			// If the player has passed part of the lock combo but not finished it,
			// processing will continue
			} else if (!audio_is_playing(snd_lock_vocals) && passed && !succeeded) {
				passed = false;
				obj_room_manager.pause = false;
				curr_index++;
			
			// If the player has succeeded, they will unlock the next room
			} else if (!audio_is_playing(snd_lock_vocals) && passed && succeeded) {
				obj_room_manager.pause = false;
			}
		}
	}

	frame_count++;
}