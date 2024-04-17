/// @description Insert description here
// You can write your code in this editor

if collision_circle(x,y,16, obj_player,true,true) and pickup_timer = 0 and following = false// and keyboard_check_pressed(vk_space)
{
	following = true
	released = false
	pickup_timer = pickup_timer_max
	obj_player.collected += 1
	//array_push(obj_inst_manager.instrument_order,self)
	position_num = obj_player.collected
	}

if pickup_timer > 0 {
	pickup_timer -= 1
}

if following {
	x = obj_player.xprevious + x_offset
	y = obj_player.yprevious + y_offset
	instrument_on = true
}

if keyboard_check_pressed(vk_space) and following = true and pickup_timer = 0{
	released = true
	following = false
	instrument_on = false
	pickup_timer = pickup_timer_max
	obj_player.collected -=1
}

if released {
	if point_distance(x, y, start_x, start_y) > 5
{
    move_towards_point(start_x, start_y, 5);
}
else speed = 0;
	//x += 20
}

if x > room_width {
	x = 0
}
/*

if following and !selected { 
	image_xscale = 0.5
	image_yscale = 0.5
}
*/
