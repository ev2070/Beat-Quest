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

/*		KEY
	* button1 : obj_bass sprite
	* button2 : obj_brass sprite
	* button3 : obj_guitar sprite
	* button4 : obj_piano sprite
*/

if (global.prev_room == Room_SeparateInstrument1) {
	button_seq_length = 5;
} else if (global.prev_room == Room_Disco) {
	button_seq_length = 6;
} else if (global.prev_room == Room_Happy) {
	button_seq_length = 7;
} else if (global.prev_room == Room_jazzrocksomething) {
	button_seq_length = 8;
}

for (var _i = 0; _i < button_seq_length; _i++) {
    button_sequence[_i] = buttons[irandom_range(0,3)];
}
show_debug_message(string(button_sequence));

frame_count = 0; // for obj_semiquaver spawn