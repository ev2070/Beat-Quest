// obj_room_manager Step event

if (room == Room_Title) {
	if !audio_is_playing(happysong_drums) and !audio_is_playing(happysong_piano){
		audio_play_sound(happysong_drums,0,0)
		audio_play_sound(happysong_piano,0,0)
		audio_play_sound(happysong_trumpet,0,0)
		
	   audio_sound_gain(happysong_trumpet,0,0.1)
	
	}
	if (keyboard_check_pressed(vk_enter)){
		room_goto(Room_Instructions)
		audio_play_sound(snd_enemy_hit,0,0)
		
	}
}

if (room == Room_End) {
	if (keyboard_check_pressed(vk_enter)){
		room_goto(Room_Title)
	}
}

if (room == Room_Instructions) {
	audio_sound_gain(happysong_trumpet,1,0.1)
	
	if (keyboard_check_pressed(vk_enter)){
		audio_stop_all()
		audio_play_sound(snd_enemy_hit,0,0)
		room_goto(Room_Tutorial)
	}
}

if (room == Room_Lock) {
	
	if (obj_player.x < 0 || obj_player.x > room_width*1.5) {
		
		if (!audio_is_playing(snd_lock_vocals) && obj_lock_manager.passed && obj_lock_manager.succeeded) {
			audio_stop_all();
			ResetStateArrays(1,1,1);
			room = global.next_room;
		} else {
			audio_stop_all();
			room = global.prev_room;
			returning = true;
		}
	}
	
}

if (room == Room_SeparateInstrument || room == Room_Disco || room == Room_Rave || room == Room_jazzrocksomething) {

	if (array_length(global.combo) == 0 && lock_length == 0) {
		
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
			if (!array_contains(global.combo,_rand_instr)) { // Prevents repeats
				global.combo[_i] = _rand_instr;
			} else { // Stay on this index otherwise
				_i--;
			}
		}
	}
	
	if (instance_number(obj_button_instr) == 0) {
		
		var _clue_start = -1;
		if (lock_length == 3) { _clue_start = obj_door.x-obj_door.sprite_width*0.6; }
		else { _clue_start = obj_door.x-obj_door.sprite_width; }
		
		for (var _i = 0; _i < lock_length; _i++) {
			var _clue = noone;
			if (global.combo[_i] == obj_BASS) {
				_clue = instance_create_depth(_clue_start+(_i*64), obj_door.y-obj_door.sprite_height/2, -1, obj_button_instr);
				_clue.button_instr = "BASS";
			} else if (global.combo[_i] == obj_BRASS) {
				_clue = instance_create_depth(_clue_start+(_i*64), obj_door.y-obj_door.sprite_height/2, -1, obj_button_instr);
				_clue.button_instr = "BRASS";
			} else if (global.combo[_i] == obj_GUITAR) {
				_clue = instance_create_depth(_clue_start+(_i*64), obj_door.y-obj_door.sprite_height/2, -1, obj_button_instr);
				_clue.button_instr = "GUITAR";
			} else if (global.combo[_i] == obj_PIANO) {
				_clue = instance_create_depth(_clue_start+(_i*64), obj_door.y-obj_door.sprite_height/2, -1, obj_button_instr);
				_clue.button_instr = "PIANO";
			}
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
				_instr_instance.returning = false;
                obj_player.move_dir = "left";
                _instr_instance.instrument_on = true;
            }
        }
    }
    collected_instruments = [];
}