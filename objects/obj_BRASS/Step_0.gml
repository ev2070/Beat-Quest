/// @description Insert description here
// You can write your code in this editor
event_inherited();
//instrument_on = false
instrument_type = "BRASS"
if room = Room_Disco {
	sprite_index = spr_violin
}
else sprite_index = spr_brass_player



if (obj_room_manager.returning) {
	
	// If the brass was collected, it shall keep playing once player returns from Room_Lock
	// Remove brass from array, set brass behavior according to previous room's settings
	if (array_contains(obj_room_manager.collected_instruments, obj_BRASS)) {
		
		for (var i = 0; i < array_length(obj_room_manager.collected_instruments); i++) {
		    if (obj_room_manager.collected_instruments[i] == obj_BRASS) {
		        
				array_delete(obj_room_manager.collected_instruments, i, 1);
				
				position_num = array_find_index(obj_room_manager.position_numbers, function(val) { return val == obj_BRASS; }) + 1;
				if (room == Room_SeparateInstrument || room == Room_Disco || room == Room_Happy) {
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