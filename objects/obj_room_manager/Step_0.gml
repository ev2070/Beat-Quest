// obj_room_manager Step event

// obj_player can move left or right to return back to previous room
if (room == Room_Lock) {
	
	if (obj_player.x < 0 || obj_player.x > room_width) {
		audio_stop_all();
	    room = global.prev_room;
		array_copy(position_numbers, 0, collected_instruments, 0, array_length(collected_instruments));
		returning = true;
	}
	
	if (instance_number(obj_quaver) == 0) {
		
		// Spawn a quaver for each instrument in the sequence
		// Set starting point of the quavers appropriately
		quaver_start = room_width*0.54;
		for (var _i = 0; _i < lock_length; _i++) {
			var _a_quaver = instance_create_depth(quaver_start+_i*64, room_height*0.2, -1, obj_quaver);
			_a_quaver.quaver_num = _i;
				 if (lock_combo[_i] == obj_BASS)   { _a_quaver.quaver_color = instr1_color; }
			else if (lock_combo[_i] == obj_BRASS)  { _a_quaver.quaver_color = instr2_color; }
			else if (lock_combo[_i] == obj_GUITAR) { _a_quaver.quaver_color = instr3_color; }
			else if (lock_combo[_i] == obj_PIANO)  { _a_quaver.quaver_color = instr4_color; }
		}
	}
	
}



if (room == Room_SeparateInstrument || room == Room_Disco || room == Room_Rave || room == Room_jazzrocksomething) {
	
	if obj_GUITAR.instrument_on {
		if (!array_contains(collected_instruments, obj_GUITAR)) {
		    array_push(collected_instruments, obj_GUITAR);
		}
	}
	if obj_PIANO.instrument_on {
		if (!array_contains(collected_instruments, obj_PIANO)) {
		    array_push(collected_instruments, obj_PIANO);
		}
	}
	if obj_BRASS.instrument_on {
		if (!array_contains(collected_instruments, obj_BRASS)) {
		    array_push(collected_instruments, obj_BRASS);
		}
	}
	if obj_BASS.instrument_on {
		if (!array_contains(collected_instruments, obj_BASS)) {
		    array_push(collected_instruments, obj_BASS);
		}
	}

	if (array_length(lock_combo) == 0 && lock_length == 0) {
		
		// Set length of the lock combo appropriately
		if (room == Room_SeparateInstrument) {
			lock_length = 3;
		} else if (room == Room_Disco) {
			lock_length = 4;
		} else if (room == Room_Rave) {
			lock_length = 4;
		} else if (room == Room_jazzrocksomething) {
			lock_length = 4;
		}
		
		// Generate a random lock combo
		for (var _i = 0; _i < lock_length; _i++) {
		    lock_combo[_i] = instrs[irandom_range(0,3)];
		}
	}
	
}
