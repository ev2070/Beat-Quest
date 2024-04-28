/// @description Insert description here
// You can write your code in this editor

if collision_circle(x,y,32,obj_player,true,true) {
		audio_stop_all()
		//show_debug_message("COLLIDING in: "+ room_get_name(room));
		obj_enemy_manager.instrument_list = ["BASS", "BRASS", "GUITAR", "PIANO"]
		// if room = Room_SeparateInstrument { room = Room_Disco; }
		if room = Room_SeparateInstrument {
			global.prev_room = Room_SeparateInstrument;
			global.next_room = Room_Disco;
			//show_debug_message("PREV_ROOM: "+room_get_name(global.prev_room));
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
			//room = Room_SeparateInstrument;
			global.prev_room = Room_jazzrocksomething;
			global.next_room = Room_SeparateInstrument;
			room = Room_Lock;
			}
	
		
}