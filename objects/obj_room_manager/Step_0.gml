// obj_room_manager Step event

if (room == Room_Title) {
	if (keyboard_check_pressed(vk_enter)){
		room_goto(Room_Tutorial)
	}
}


// obj_player can move left or right to return back to previous room
if (room == Room_Lock) {
	
	if (obj_player.x < 0 || obj_player.x > room_width*1.5) {
		audio_stop_all();
	    room = global.prev_room;
		returning = true;
	}
	
}

if (room == Room_SeparateInstrument || room == Room_Disco || room == Room_Rave || room == Room_jazzrocksomething) {

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
			var _rand_instr = instrs[irandom_range(0,3)];
			if (!array_contains(lock_combo,_rand_instr)) { // Prevents repeats
				lock_combo[_i] = _rand_instr;
			} else { // Stay on this index otherwise
				_i--;
			}
		}
		show_debug_message(string(lock_combo))
		
		if (room == Room_SeparateInstrument) {
			with (obj_button_instr) {
				instance_destroy();
			}
		}
	}
	
	if (instance_number(obj_button_instr) == 0) {
		for (var _i = 0; _i < lock_length; _i++) {
			var _clue = noone;
			if (lock_combo[_i] == obj_BASS) {
				_clue = instance_create_depth(obj_door.x+(_i*32), obj_door.y-obj_door.sprite_height-16, -1, obj_button_instr);
				_clue.button_instr = "BASS";
			} else if (lock_combo[_i] == obj_BRASS) {
				_clue = instance_create_depth(obj_door.x+(_i*32), obj_door.y-obj_door.sprite_height-16, -1, obj_button_instr);
				_clue.button_instr = "BRASS";
			} else if (lock_combo[_i] == obj_GUITAR) {
				_clue = instance_create_depth(obj_door.x+(_i*32), obj_door.y-obj_door.sprite_height-16, -1, obj_button_instr);
				_clue.button_instr = "GUITAR";
			} else if (lock_combo[_i] == obj_PIANO) {
				_clue = instance_create_depth(obj_door.x+(_i*32), obj_door.y-obj_door.sprite_height-16, -1, obj_button_instr);
				_clue.button_instr = "PIANO";
			}
			
			show_debug_message(string(lock_combo[_i].object_index) +" "+_clue.button_instr);
		}
	}
}


// Have collected instruments follow player upon return
if (returning && array_length(collected_instruments) > 0 && room != Room_Lock) {
    for (var _i = 0; _i < array_length(collected_instruments); _i++) {
        
        if (instance_exists(collected_instruments[_i])) {
            var _instr_instance = instance_find(collected_instruments[_i], 0); // Find first instance
            
            if (_instr_instance != noone) {
                _instr_instance.following = true;
                _instr_instance.released = false;
                _instr_instance.pickup_timer = _instr_instance.pickup_timer_max;
                obj_player.collected += 1;
                _instr_instance.position_num = obj_player.collected;
                _instr_instance.collided = true;
                obj_player.move_dir = "left";
                _instr_instance.instrument_on = true;
            }
        }
    }
    collected_instruments = [];
}
