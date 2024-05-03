/// @description Insert description here
// You can write your code in this editor

if collision_circle(x,y,32,obj_player,true,true) {
		audio_stop_all()
		obj_enemy_manager.instrument_list = ["BASS", "BRASS", "GUITAR", "PIANO"]
		
		// Iterate through all instruments objects
		var _num_instruments = instance_number(obj_instrument);
		for (var _i = 0; _i < _num_instruments; _i++) {
			var _instr_instance = instance_find(obj_instrument, _i); // Find ith instance
		
			if (_instr_instance != noone && _instr_instance.instrument_on) {
				obj_room_manager.collected_instruments[_instr_instance.position_num-1] = _instr_instance.object_index;
			}
		}
		
		if room = Room_SeparateInstrument {
			global.prev_room = Room_SeparateInstrument;
			global.next_room = Room_Disco;
			room = Room_Lock;
			}
		if room = Room_Disco { 
			draw_text(100,100,"disco")
			global.prev_room = Room_Disco;
			global.next_room = Room_Rave
			room = Room_Lock;
			}
		if room = Room_Rave { 
			draw_text(100,100,"rock")
			global.prev_room = Room_Rave;
			global.next_room = Room_jazzrocksomething;
			room = Room_Lock;
			}
		if room = Room_jazzrocksomething { 
			draw_text(100,100,"rock")
			global.prev_room = Room_jazzrocksomething;
			global.next_room = Room_SeparateInstrument;
			room = Room_Lock;
			}
	
		
}