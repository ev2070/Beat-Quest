/// @description Insert description here
// You can write your code in this editor

if collision_circle(x,y,32,obj_player,true,true) {
		audio_stop_all()
		// if room = Room_SeparateInstrument { room = Room_Disco; }
		if room = Room_SeparateInstrument {
			global.prev_room = Room_SeparateInstrument;
			global.next_room = Room_Disco;
			room = Room_Lock;
			}
		if room = Room_Disco { 
			draw_text(100,100,"disco")
			global.prev_room = Room_Disco;
			global.next_room = Room_Happy
			room = Room_Lock;
			}
		if room = Room_Happy { 
			draw_text(100,100,"rock")
			global.prev_room = Room_Happy;
			global.next_room = Room_jazzrocksomething;
			room = Room_Lock;
			}
		if room = Room_jazzrocksomething { 
			draw_text(100,100,"rock")
			room = Room_SeparateInstrument;
			//global_prev_room = Room_jazzrocksomething;
			//global.next_room = Room_SeparateInstrument;
			//room = Room_Lock;
			}
	
		
}