// obj_instr Step event

if instr = "BASS" {
	sprite_index = spr_bass
	
} else if instr = "BRASS" {
	if room = Room_Disco {
		sprite_index = spr_violin
	}
	else {
	sprite_index = spr_brass
	}
	
} else if instr = "GUITAR" {
	if room = Room_Rave {
		sprite_index = spr_singer
	}
	else {
	sprite_index = spr_guitar
	}
	
} else if instr = "PIANO" {
	sprite_index = spr_piano
}