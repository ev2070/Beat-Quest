// obj_music_note Step event

image_alpha -= 0.01; // Fade away
if (image_alpha <= 0) {
	instance_destroy();
}

// Rotate
if (scaling_up) {
    image_xscale += scale_direction;
    if (image_xscale >= 1) {
        scaling_up = false;
    }
} else {
    image_xscale -= scale_direction;
    if (image_xscale <= 0) {
        scaling_up = true;
    }
}