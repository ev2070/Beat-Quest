// obj_lock_manager Create event

randomize();

puzzle_theme = -1;
if (!audio_is_playing(puzzle_theme)) {
	puzzle_theme = audio_play_sound(snd_puzzle_theme, 1, true);
}

instructions = "I - RED\nO - GREEN\nK - YELLOW\nL - BLUE";

riddle1 = "In the band room's ensemble, a melody unfurls.\n" +
			"With ivory keys and deep, resonant whirls.\n" +
			"A twang then follows, a bright brassy glare.\n" +
			"Another deep hum, a melody most rare.";
			
riddle2 = "Disco's rhythm, a lively dance beat.\n" +
			"Starts with a thump, then strings repeat.\n" +
			"A hint of keys, then a brighter tone.\n" +
			"Strings again, a strum, and a bright tone is known.";

riddle3 = "A room of joy, where sounds take flight.\n" +
			"A horn leads the way, then a deep, low might.\n" +
			"A mellifluous hum, with a gentle tone.\n" +
			"Then a key's own, followed by a deep, low tone.\n" +
			"Next, a high-pitched call.\n" +
			"At last, a nostalgic tone in the hall.";

riddle4 = "Jazzy rock, a mix of styles grand.\n" +
			"A chord starts strong, with keys in demand.\n" +
			"Then another flair, a bright delight.\n" +
			"Two deep thumps, then sonata moonlight.\n" +
			"After that, a bold, brilliant call.\n" +
			"Finally, a string's dance in the hall.";

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

if (global.prev_room == Room_SeparateInstrument) {
	// Piano, Bass, Guitar, Brass, Bass
	button_sequence = [obj_button4, obj_button1, obj_button3, obj_button2, obj_button1];
	button_seq_length = 5;
} else if (global.prev_room == Room_Disco) {
	// Bass, Strings, Piano, Strings, Guitar, Piano
	button_sequence = [obj_button1, obj_button2, obj_button4, obj_button2, obj_button3, obj_button4];
	button_seq_length = 6;
} else if (global.prev_room == Room_Happy) {
	//  Brass, Bass, Voice, Piano, Bass, Brass, Voice
	button_sequence = [obj_button2, obj_button1, obj_button3, obj_button4, obj_button1, obj_button2, obj_button3];
	button_seq_length = 7;
} else if (global.prev_room == Room_jazzrocksomething) {
	// Guitar, Piano, Brass, Bass, Bass, Piano, Brass, Guitar
	button_sequence = [obj_button3, obj_button4, obj_button2, obj_button1, obj_button1, obj_button4, obj_button2, obj_button3];
	button_seq_length = 8;
}

frame_count = 0; // for obj_music_note spawn