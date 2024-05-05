// obj_lock_manager Create event

randomize();

curr_index = 0;
failed = false;
passed = false;
succeeded = false;

combo_length = array_length(obj_room_manager.lock_combo);
collected_length = array_length(obj_room_manager.collected_instruments);

frame_count = 0; // for obj_semiquaver spawn