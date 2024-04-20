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
	draw_rectangle_color(room_width*0.45, room_height*0.15, room_width*0.95, room_height*0.7, #2E3192, #2E3192, #2E3192, #2E3192, false);
	
	// Lock Screen
	draw_rectangle_color(room_width*0.5, room_height*0.2, room_width*0.9, room_height*0.3, #FF579F, #FF579F, #FF579F, #FF579F, false);
	
	// Lock Screen Frame (top, bottom, left, right)
	draw_line_width_color(room_width*0.5-1, room_height*0.2, room_width*0.9, room_height*0.2, room_height/60, #D6F417, #D6F417);
	draw_line_width_color(room_width*0.5-1, room_height*0.3, room_width*0.9, room_height*0.3, room_height/60, #D6F417, #D6F417);
	draw_line_width_color(room_width*0.5, room_height*0.19+1, room_width*0.5, room_height*0.31-1, room_width/100, #D6F417, #D6F417);
	draw_line_width_color(room_width*0.9, room_height*0.19+1, room_width*0.9, room_height*0.31-1, room_width/100, #D6F417, #D6F417);
	//draw_rectangle_color(room_width*0.5, room_height*0.2, room_width*0.9, room_height*0.3, #D6F417, #D6F417, #D6F417, #D6F417, true);
	
	// Lock Screen Text
	draw_text_color(room_width*0.7-string_width(instructions)/2, room_height*0.25-string_height(instructions)/2, instructions, c_maroon, c_maroon, c_maroon, c_maroon, 1);
}