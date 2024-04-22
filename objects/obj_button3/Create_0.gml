// obj_button3 Create event

snd = snd_button3;
color = #FFF000; // "yellow"

instr = instance_create_depth(x,y,-1,obj_button_instr);
instr.button_instr = "GUITAR";