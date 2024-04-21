// obj_player can move left or right to return back to previous room
if (room == Room_Lock) {
	
	if (obj_player.x < 0 || obj_player.x > room_width) {
	    room = global.prev_room;
		//for (var i = 0; i < array_length(collected_instruments); i++) {
		//    deep_copy[i] = array_copy(original_array[i]);
		//}
		for (var i = 0; i < array_length(collected_instruments); i++) {
			array_copy(position_numbers, i, collected_instruments, i, array_length(collected_instruments));
		}
		returning = true;
	}
}



if (room == Room_SeparateInstrument || room == Room_Disco || room == Room_Happy || room == Room_jazzrocksomething) {
	
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

}
