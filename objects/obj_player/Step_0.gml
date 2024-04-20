/// @description Insert description here
// You can write your code in this editor
if (room == Room_Lock) {
	
	x = clamp(x, -sprite_width, room_width/3);
	
	if keyboard_check(ord("D")) {
		x += move_spd*2
	}
	if keyboard_check(ord("A")) {
		x -= move_spd*2
	}
	if keyboard_check(vk_right) {
		x += move_spd*2
		move_dir = "right"
	}
	if keyboard_check(vk_left) {
		x -= move_spd*2
		move_dir = "left"
	}



} else {

	if keyboard_check(ord("W")) {
		y -= move_spd
	}
	if keyboard_check(ord("S")) {
		y += move_spd
	}
	if keyboard_check(ord("D")) {
		x += move_spd
	}
	if keyboard_check(ord("A")) {
		x -= move_spd
	}



	if keyboard_check(vk_up) {
		y -= move_spd
	}
	if keyboard_check(vk_down) {
		y += move_spd
	}
	if keyboard_check(vk_right) {
		x += move_spd
		move_dir = "right"
	}
	if keyboard_check(vk_left) {
		x -= move_spd
		move_dir = "left"
	}
	
	
	
	// If player is returning from Room_Lock, restore game state
	if (obj_room_manager.returning) {
		x = obj_door.x-50;
		y = obj_door.y;
		if (array_length(obj_room_manager.collected_instruments) == 0) {
			obj_room_manager.returning = false;
		}
	}

}