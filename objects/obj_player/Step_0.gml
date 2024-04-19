/// @description Insert description here
// You can write your code in this editor
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

