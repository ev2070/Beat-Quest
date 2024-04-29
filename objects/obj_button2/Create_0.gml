// obj_button2 Create event

snd = -1;
if (global.prev_room == Room_Disco) {
	snd = snd_lock_strings;
} else {
	snd = snd_lock_brass;
}

instr = instance_create_depth(x,y,-1,obj_button_instr);
instr.button_instr = "BRASS";