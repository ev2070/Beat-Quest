if (keyboard_check_pressed(ord("P"))) {
    slice += 1;
    if (slice > 3) {
        slice = 0;
    }
    progress = 0; // Reset the progress when changing slices
}

// Animate the progress
if (progress < 1) {
    progress += anim_speed;
    if (progress > 1) {
        progress = 1;
    }
}
