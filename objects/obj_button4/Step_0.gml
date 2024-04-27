// obj_button4 Step event

if (obj_lock_manager.unlocking_mode) {
	if (!audio_is_playing(snd) && !audio_is_playing(obj_button1.snd)
		&& !audio_is_playing(obj_button2.snd) && !audio_is_playing(obj_button3.snd)) {
		
			// If pressed on, set the current button appropriately
			if (keyboard_check_released(ord("O"))) {
				obj_lock_manager.curr_button = obj_button4;
			
				audio_play_sound(snd,1,false);
			}
	}

	if (audio_is_playing(snd) && obj_lock_manager.frame_count%2==0 && obj_lock_manager.unlocking_mode) {
		var _radius = 100;
		var _angle = random_range(0, 360);
		var _note_x = x + lengthdir_x(_radius, _angle);
		var _note_y = y + lengthdir_y(_radius, _angle);
		var _note = instance_create_depth(_note_x, _note_y, -1, obj_semiquaver);
	}
}