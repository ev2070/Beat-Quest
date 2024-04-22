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
	collided = true
	}

if pickup_timer > 0 {
	pickup_timer -= 1
}


if following {
	//x = obj_player.xprevious + x_offset
	//y = obj_player.yprevious + y_offset
	
	if obj_player.move_dir = "right" { x = lerp(x, obj_player.xprevious - (position_num * 55), 0.3);}
	else if obj_player.move_dir = "left" { x = lerp(x,obj_player.xprevious + (position_num * 55), 0.3);}
	y = lerp(y,obj_player.yprevious, 0.3)
	image_xscale = 0.7
	image_yscale = 0.7
	instrument_on = true
}
else {
	image_xscale = 1
	image_yscale = 1
}



if keyboard_check_pressed(vk_space) and following = true and pickup_timer = 0{
	if position_num = 1 {
	released = true
	following = false
	instrument_on = false
	pickup_timer = pickup_timer_max
	obj_player.collected -=1
}
	else {
		position_num -= 1
	}
}

if released {
	//throw and return to start position.
	//if obj_player.move_dir = "right" {x += move_spd}
	//else if obj_player.move_dir = "left"{x -= move_spd}
	x+=move_spd
	if point_distance(x, y, start_x, start_y) < 10
{
    move_towards_point(start_x, start_y, 5);
}
else speed = 0;
	//x += 20
}

if x > room_width {
	x = 10
}
if x < 0 {
	x = room_width - 10
}
/*

if following and !selected { 
	image_xscale = 0.5
	image_yscale = 0.5
}
*/

if (instance_exists(obj_enemy) && point_distance(x, y, obj_enemy.x, obj_enemy.y) < reset_distance) {
    x = start_x;
    y = start_y;
    following = false; 
    instrument_on = false; 
    
}
