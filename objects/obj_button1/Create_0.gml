// obj_button1 Create event

snd = snd_button1;
color = #EE1C24; // "red"

instr = instance_create_depth(x,y,-1,obj_button_instr);
instr.button_instr = "BASS";