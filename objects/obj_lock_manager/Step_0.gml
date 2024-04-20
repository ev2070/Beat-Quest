// obj_lock_manager Step event

if (keyboard_check_pressed(vk_space)) {
	// Must reset these persistent arrays before proceeding to next room!
	obj_room_manager.collected_instruments = [];
	obj_room_manager.position_numbers = [];
	room = global.next_room;
}