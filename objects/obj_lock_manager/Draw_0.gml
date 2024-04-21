// obj_lock_manager Draw event

if (room == Room_Lock) {
	//////// Display room graphics
	
	// Door
	draw_rectangle_color(room_width/3, 0, room_width, room_height, #00BFF3, #00BFF3, #00BFF3, #00BFF3, false);
	
	// Door frame
	draw_line_width_color(room_width/3, -1, room_width/3, room_height+1, room_width/7, #ECECEC, #ECECEC);
	
	// Door handle
	draw_rectangle_color(room_width*0.85, room_height*0.85, room_width, room_height, #2E3192, #2E3192, #2E3192, #2E3192, false);
	
	
	// Lock
	draw_rectangle_color(room_width*0.475, room_height*0.06, room_width*0.925, room_height*0.7, #2E3192, #2E3192, #2E3192, #2E3192, false);
	
	// Lock Screen
	draw_rectangle_color(room_width*0.5, room_height*0.1, room_width*0.9, room_height*0.3, #FF579F, #FF579F, #FF579F, #FF579F, false);
	
	// Lock Screen Frame (top, bottom, left, right)
	draw_line_width_color(room_width*0.5-1, room_height*0.1, room_width*0.9, room_height*0.1, room_height/60, #D6F417, #D6F417);
	draw_line_width_color(room_width*0.5-1, room_height*0.3+1, room_width*0.9, room_height*0.3+1, room_height/60, #D6F417, #D6F417);
	draw_line_width_color(room_width*0.5, room_height*0.09+1, room_width*0.5, room_height*0.31, room_width/100, #D6F417, #D6F417);
	draw_line_width_color(room_width*0.9, room_height*0.09+1, room_width*0.9, room_height*0.31, room_width/100, #D6F417, #D6F417);
	//draw_rectangle_color(room_width*0.5, room_height*0.2, room_width*0.9, room_height*0.3, #D6F417, #D6F417, #D6F417, #D6F417, true);
	
	// Lock Screen Text
	if (global.prev_room == Room_SeparateInstrument) {
		draw_text_color(room_width*0.7-string_width(riddle1)/2, room_height*0.2-string_height(riddle1)/2, riddle1, c_maroon, c_maroon, c_maroon, c_maroon, 1);
	} else if (global.prev_room == Room_Disco) {
		draw_text_color(room_width*0.7-string_width(riddle2)/2, room_height*0.2-string_height(riddle2)/2, riddle2, c_maroon, c_maroon, c_maroon, c_maroon, 1);
	} else if (global.prev_room == Room_Happy) {
		draw_text_color(room_width*0.7-string_width(riddle3)/2, room_height*0.2-string_height(riddle3)/2, riddle3, c_maroon, c_maroon, c_maroon, c_maroon, 1);
	} else if (global.prev_room == Room_jazzrocksomething) {
		draw_text_color(room_width*0.7-string_width(riddle3)/2, room_height*0.2-string_height(riddle4)/2, riddle4, c_maroon, c_maroon, c_maroon, c_maroon, 1);
	}
}