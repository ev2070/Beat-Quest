// obj_lock_manager Step event

if (keyboard_check_pressed(vk_space)) {
	// Must reset these persistent arrays before proceeding to next room!
	obj_room_manager.collected_instruments = [];
	obj_room_manager.position_numbers = [];
	room = global.next_room;
}

if (curr_button == noone || !audio_is_playing(curr_button.snd)) {
	
	if (curr_button_index < button_seq_length) {
		
		// If correct button pressed, increment pointer
		// Else, return to global.prev_room
		if (curr_button == button_sequence[curr_button_index]) {
		
			curr_button_index++;
			curr_button = noone;
		
		} else if (curr_button != noone) { // Failed to unlock
			
			audio_play_sound(snd_drum_bad,1,false);
			
			room = global.prev_room;
		}
		
	} else { // Unlocked next room
		
		obj_room_manager.collected_instruments = [];
		obj_room_manager.position_numbers = [];
		room = global.next_room;

	}		
}

frame_count++;