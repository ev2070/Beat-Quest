/// @description Insert description here
// You can write your code in this editor
if global.prev_room = Room_SeparateInstrument {
	instance_create_depth(x,y,0,obj_inst_manager)
}
else if global.prev_room = Room_Disco {
	instance_create_depth(x,y,0,obj_disco_manager)
}
else if global.prev_room = Room_Rave {
	instance_create_depth(x,y,0,obj_rave_manager)
}
else if global.prev_room = Room_jazzrocksomething {
	instance_create_depth(x,y,0,obj_rock_manager)
}