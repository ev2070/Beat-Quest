// obj_semiquavers Create event

randomize();

image_angle = random(360);
image_alpha = 1;
rotation_speed = 5;
scale_direction = 0.01;        // Set the direction and speed of the scaling
scaling_up = true;             // Set the initial scaling direction

switch (obj_lock_manager.curr_button) {
	case obj_button1:
		sprite_index = spr_music_note1;
		break;
	case obj_button2:
		sprite_index = spr_music_note2;
		break;
	case obj_button3:
		sprite_index = spr_music_note3;
		break;
	case obj_button4:
		sprite_index = spr_music_note4;
		break;
	default:
		break;
}