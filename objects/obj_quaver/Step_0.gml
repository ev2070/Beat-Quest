// obj_quaver Step event

if (keyboard_check_pressed(vk_backspace)) {
	image_blend = quaver_color;
}

/*
// If the player successfully presses a button, the corresponding quaver will 
// turn from dark gray to its corresponding color.
if (obj_lock_manager.unlocking_mode
	&& obj_lock_manager.curr_button_index < obj_lock_manager.button_seq_length
	&& obj_lock_manager.curr_button == obj_lock_manager.button_sequence[obj_lock_manager.curr_button_index]
	&& obj_lock_manager.curr_button_index == quaver_num) {

		image_blend = quaver_color;		
}

// If the player fails at a try to unlock the next room, 
// the quaver will quiver and return to dark gray
// Reset some of its member variables.
else if (obj_lock_manager.unlocking_mode
	&& obj_lock_manager.curr_button_index < obj_lock_manager.button_seq_length
	&& obj_lock_manager.curr_button != obj_lock_manager.button_sequence[obj_lock_manager.curr_button_index]
	&& obj_lock_manager.curr_button != noone) {
		
		image_blend = c_dkgray;

		x += dirx * x_jitter;
		if (x <= xi-jitter_offset || x >= xi+jitter_offset) {
		    dirx *= -1;
		}
	
		y += diry * y_jitter;	
		if (y <= yi-jitter_offset || y >= yi+jitter_offset) {
		    diry *= -1;
		}
	
} else if (x != xi) { // Reset x pos and prep for next horizontal jitter
	x = xi;
	
	dirx = irandom_range(0,1);
	dirx = (dirx == 1) ? 1 : -1;
	x_jitter = random_range(-jitter_amt, jitter_amt);

} else if (y != yi) { // Reset y pos and prep for next vertical jitter
	y = yi;
	
	diry = irandom_range(0,1);
	diry = (diry == 1) ? 1 : -1;
	y_jitter = random_range(-jitter_amt, jitter_amt);
}
*/