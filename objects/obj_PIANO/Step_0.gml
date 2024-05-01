/// @description Insert description here
// You can write your code in this editor
event_inherited();
//instrument_on = false
instrument_type = "PIANO"



if (obj_room_manager.returning) {
	
	// If the piano was collected, it shall keep playing once player returns from Room_Lock
	// Remove piano from array, set piano behavior according to previous room's settings
	if (array_contains(obj_room_manager.collected_instruments, obj_PIANO)) {
		
		for (var i = array_length(obj_room_manager.collected_instruments) - 1; i >= 0; i--) {
			if (obj_room_manager.collected_instruments[i] == obj_PIANO) {
				
				array_delete(obj_room_manager.collected_instruments, i, 1);
				
				position_num = array_find_index(obj_room_manager.position_numbers, function(val) { return val == obj_PIANO; }) + 1;
				if (room == Room_SeparateInstrument || room == Room_Disco || room == Room_Rave || room == Room_jazzrocksomething) {
					y = obj_door.y;
					following = true;
					instrument_on = true;
				}
				obj_player.collected++;
				break;
			}
		}
	}
}