/// @description Insert description here
// You can write your code in this editor
if collision_circle(x,y,16, obj_player,true,true) and following = false {
	global.TOTAL_PIECES += 1
	following = true
	released = false
}

if following {
	x = obj_player.xprevious + 40 
	y = obj_player.yprevious 
}

if keyboard_check_pressed(vk_space) and following = true {
	released = true
	following = false
	global.TOTAL_PIECES -= 1
}

if released {
	x += 20
}

if x > room_width {
	x = 0
}