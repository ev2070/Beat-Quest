// obj_button3 Create event

snd = -1;
if (global.prev_room == Room_Rave) {
	snd = snd_lock_vocals;
} else {
	snd = snd_lock_guitar;
}

instr = instance_create_depth(x,y,-1,obj_button_instr);
instr.button_instr = "GUITAR";