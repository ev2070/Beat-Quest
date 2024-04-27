// obj_lock_manager Create event

randomize();

puzzle_theme = -1;
if (!audio_is_playing(puzzle_theme)) {
	puzzle_theme = audio_play_sound(snd_puzzle_theme, 1, true);
}

instructions = "I - RED\nO - GREEN\nK - YELLOW\nL - BLUE";

curr_button = noone; // What is the current button?
curr_button_index = 0; // A pointer

buttons = [obj_button1, obj_button2, obj_button3, obj_button4]; // Array of all buttons
button_sequence = []; // Array of correct button sequence
button_seq_length = 0; // How many buttons should be in the above sequence?

quaver_start = room_width*0.54; // Where should the quavers start?

unlocking_mode = false; // Is the player unlocking the lock?
tries_left = 3;

/*		KEY
	* button1 : obj_bass sprite : I
	* button2 : obj_brass sprite : L
	* button3 : obj_guitar sprite : K
	* button4 : obj_piano sprite : O
*/

// Set length of the button sequence appropriately
// Set starting point of the quavers appropriately
if (global.prev_room == Room_SeparateInstrument) {
	button_seq_length = 3;
} else if (global.prev_room == Room_Disco) {
	button_seq_length = 4;
} else if (global.prev_room == Room_Happy) {
	button_seq_length = 5;
} else if (global.prev_room == Room_jazzrocksomething) {
	button_seq_length = 6;
}

// Generate a random button sequence player must complete
// Spawn a quaver for each button in the sequence
for (var _i = 0; _i < button_seq_length; _i++) {
    button_sequence[_i] = buttons[irandom_range(0,3)];
	var _a_quaver = instance_create_depth(quaver_start+_i*64, room_height*0.2, -1, obj_quaver);
	// will be adding member variables to obj_quaver and setting them here soon
}
//show_debug_message(string(button_sequence));



frame_count = 0; // for obj_semiquaver spawn