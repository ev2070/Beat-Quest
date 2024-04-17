/// @description Insert description here
// You can write your code in this editor

if collision_circle(x,y,32,obj_player,true,true) {
		audio_stop_all()
		if room = Room_SeparateInstrument { room = Room_Disco; }
		if room = Room_Disco { 
			draw_text(100,100,"disco")
			room = Room_jazzrocksomething; 
			}
		if room = Room_jazzrocksomething { 
			draw_text(100,100,"rock")
			room = Room_Happy;
			}
		if room = Room_Happy { 
			draw_text(100,100,"rock")
			room = Room_SeparateInstrument
			}
	
		
}