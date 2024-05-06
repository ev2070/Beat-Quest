// obj_lock_manager Create event

background_layer = layer_get_id("Background");

background = layer_background_get_id(background_layer);
randomize();

curr_index = 0;
failed = false;
passed = false;
succeeded = false;

combo_length = array_length(global.combo);
collected_length = array_length(obj_room_manager.collected_instruments);

frame_count = 0; // for obj_semiquaver spawn