// obj_play_button Step event

if (keyboard_check_pressed(ord("P")) && !animating) {
    slice += 1;
    if (slice > 3) {
        slice = 0;
    }
    progress = 0; // Reset the progress when changing slices
}

// Animate the progress
if (progress < 1) {
	animating = true;
    progress += anim_speed;
    if (progress > 1) {
		animating = false;
        progress = 1;
    }
}
