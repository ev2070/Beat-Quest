// obj_room_manager Create event

global.prev_room = noone;
global.next_room = noone;

returning = false;

collected_instruments = [];
enemies = [];

randomize();
instrs = [obj_BASS, obj_BRASS, obj_GUITAR, obj_PIANO];
lock_combo = [];
lock_length = 0;

quaver_start = 0;
instr1_color = #EE1C24; // "red"
instr2_color = #0039FF; // "blue"
instr3_color = #FFF000; // "yellow"
instr4_color = #00E56F; // "green"

pause = false;