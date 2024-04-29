/// @description Insert description here
// You can write your code in this editor


move_spd = 4
follow_distance = 1000;

my_weakness = instance_create_depth(x+25,y+20,0,obj_enemy_weakness)
//choose my weakness
var index = irandom(array_length(obj_enemy_manager.instrument_list)-1)
weakness = obj_enemy_manager.instrument_list[index]
array_delete(obj_enemy_manager.instrument_list, index, 1)
my_weakness.weakness = weakness
returning = false