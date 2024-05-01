// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetStateArrays(_resetCollectedInstruments, _resetPositionNumbers, _resetEnemies){
	if (_resetCollectedInstruments) { obj_room_manager.collected_instruments = []; }
	if (_resetPositionNumbers) { obj_room_manager.position_numbers = []; }
	if (_resetEnemies) { obj_room_manager.enemies = []; }
}