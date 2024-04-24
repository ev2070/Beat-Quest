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

if release_timer > 0 {
	release_timer -= 1
}


if following {
	//x = obj_player.xprevious + x_offset
	//y = obj_player.yprevious + y_offset
	distance_counter = 0
	if obj_player.move_dir = "right" { 
		x = lerp(x, obj_player.xprevious - (position_num * 55), 0.5);
		x = clamp(x,-50,room_width+30)
		}
	else if obj_player.move_dir = "left" {
		x = lerp(x,obj_player.xprevious + (position_num * 55), 0.5);
		}
	if position_num = 1 {
		y = lerp(y,obj_player.yprevious, 0.3)
	}
	else {
		y = lerp(y,obj_player.yprevious, 0.3)
		/*with(obj_instrument) {
			if position_num = 1
			next = obj_instrument
		}
		y = lerp(y,next.yprevious,0.3)
		*/
	}
	image_xscale = 0.7
	image_yscale = 0.7
	instrument_on = true
}
else {
	next = 0
	image_xscale = 1
	image_yscale = 1
}



if keyboard_check_pressed(vk_space) and following = true and pickup_timer = 0 and release_timer = 0 {
	release_timer = release_timer_max
	move_dir = obj_player.move_dir
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
	distance_counter += 1
	//throw and return to start position.
	if move_dir = "right" {x += move_spd}
	else if move_dir = "left"{x -= move_spd}
	image_angle += 8
}
else image_angle = lerp(image_angle, 0,0.3)

if x > room_width + 50{
	x = 10
}
if x < -50 {
	x = room_width - 10
}

//projectile moves a  set distance 
//if it never collides with anything?
if distance_counter > 100 {
	move_spd = lerp(move_spd, 0, 0.5)
}
if move_spd = 0 {
	released = false
	move_spd = 30
	distance_counter = 0
}


//Bounce back after hitting the wall/obstacle
if collision_circle(x,y,20,obj_temp_obstacle,false,false) {
	if move_dir = "right" {
		move_dir = "left"
	}
	else if move_dir = "left" {
		move_dir = "right" 
	}
	
}


//Behavior after hitting an enemy?


/*
if (instance_exists(obj_enemy) && point_distance(x, y, obj_enemy.x, obj_enemy.y) < reset_distance) {
    x = start_x;
    y = start_y;
    following = false; 
    instrument_on = false; 
	obj_instrument.position_num = 0;
	obj_player.collected =0
    
}*/
