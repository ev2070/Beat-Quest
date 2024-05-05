// obj_semiquavers Create event

randomize();

image_angle = random(360);
image_alpha = 1;
rotation_speed = 5;
scale_direction = 0.01;        // Set the direction and speed of the scaling
scaling_up = true;             // Set the initial scaling direction

switch (global.combo[obj_lock_manager.curr_index]) {
	case obj_BASS:
		sprite_index = spr_music_note1;
		break;
	case obj_BRASS:
		sprite_index = spr_music_note2;
		break;
	case obj_GUITAR:
		sprite_index = spr_music_note3;
		break;
	case obj_PIANO:
		sprite_index = spr_music_note4;
		break;
	default:
		break;
}