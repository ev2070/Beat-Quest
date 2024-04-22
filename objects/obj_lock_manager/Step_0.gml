// obj_lock_manager Step event

if (keyboard_check_pressed(vk_space)) {
	// Must reset these persistent arrays before proceeding to next room!
	audio_stop_all();
	obj_room_manager.collected_instruments = [];
	obj_room_manager.position_numbers = [];
	room = global.next_room;
}

// Allowed to press a button when there is no current button
// or when the current button's sound has stopped playing
// Note: curr_button gets set and a sound plays when user presses a button
if (curr_button == noone || !audio_is_playing(curr_button.snd)) {
	
	if (curr_button_index < button_seq_length) {
		
		// If correct button pressed, increment pointer
		// Else, if you pressed incorrect button, return to global.prev_room
		if (curr_button == button_sequence[curr_button_index]) {
		
			curr_button_index++;
			curr_button = noone;
		
		} else if (curr_button != noone) { // Failed to unlock
			
			audio_stop_all();
			audio_play_sound(snd_drum_bad,1,false);
			room = global.prev_room;
			for (var i = 0; i < array_length(obj_room_manager.collected_instruments); i++) {
				array_copy(obj_room_manager.position_numbers, i, obj_room_manager.collected_instruments, i, array_length(obj_room_manager.collected_instruments));
			}
			obj_room_manager.returning = true;
		}
		
		
	} else { // Unlocked next room
		
		audio_stop_all();
		obj_room_manager.collected_instruments = [];
		obj_room_manager.position_numbers = [];
		room = global.next_room;

	}		
}

frame_count++;