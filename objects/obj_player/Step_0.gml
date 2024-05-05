
/// @description Insert description here
// You can write your code in this editor
previous_x = x
previous_y = y


if !dead {
if (room == Room_Lock) {
	
	depth = -2;
	x = clamp(x, 0, room_width*1.5);
	
	if (!obj_room_manager.pause && !obj_lock_manager.failed) {
		x += move_spd
		move_dir = "right"
		sprite_index = spr_walk_right
	}
	else if (obj_lock_manager.failed) {
		x -= move_spd*2;
		move_dir = "left"
		sprite_index = spr_walk_left
	}
	
	if (visible && x >= obj_open_door.x) {
		visible = false;
		
		// Player fails if no instruments were collected
		if (array_length(obj_room_manager.collected_instruments) == 0) {
			visible = true;
			obj_lock_manager.failed = true;
			audio_play_sound(snd_drum_bad, 1, false);
		}
		
	} else if (!visible && x < obj_open_door.x) {
		visible = true;
	}


} else {
	x = clamp(x,0,room_width)
	y = clamp(y,0,room_height)
	if keyboard_check(ord("W")) {
		y -= move_spd
	}
	if keyboard_check(ord("S")) {
		y += move_spd
	}
	if keyboard_check(ord("D")) {
		x += move_spd
		sprite_index = spr_walk_right
		
	}
	if keyboard_check(ord("A")) {
		x -= move_spd
		sprite_index = spr_walk_left
	}



	if keyboard_check(vk_up) {
		//JUMPING
		y -= move_spd
	}
	if keyboard_check(vk_down) {
		//y += move_spd
	}
	if keyboard_check(vk_right) {
		//x += move_spd
		move_dir = "right"
		//image_xscale = 1
		sprite_index = spr_walk_right
	}
	if keyboard_check(vk_left) {
	//	x -= move_spd
		move_dir = "left"
		//image_xscale = -1 //testing
		sprite_index = spr_walk_left
	}
	if (keyboard_check(vk_nokey)){
		sprite_index = spr_idle
	}
	
	
	// If player is returning from Room_Lock, restore game state
	if (obj_room_manager.returning) {
		
		if (room == Room_SeparateInstrument || room == Room_Disco || room == Room_Rave || room == Room_jazzrocksomething) {
			x = obj_door.x-sprite_width;
		}
		y = obj_door.y;
		if (array_length(obj_room_manager.collected_instruments) == 0) {
			obj_room_manager.returning = false;
		}
	}

}
if room != Room_Lock {
	var reset_distance = 100;  
var enemy_close = false;   


with (obj_enemy) {
    if (point_distance(x, y, other.x, other.y) < reset_distance) {
        enemy_close = true;
    }
}

if (enemy_close) {
    with (obj_instrument) {
        x = lerp(x,start_x,0.5);
        y = lerp(y,start_y,0.5)
		//obj_instrument.returning = true
		//reset obj_player's array of collected instrument
		obj_player.collected = 0
        obj_instrument.following = false;
        obj_instrument.instrument_on = false; 
		obj_instrument.position_num = 0
		obj_instrument.released = false
		obj_instrument.returning = true;
		
		ResetStateArrays(1,0,0);
    }
}
}

///---Platformer---//
if room != Room_Lock {
#region base movement and animation related to keypress

	vspd += grav_amt                                        //apply gravity

	if keyboard_check(vk_left){							// if pressing A..
	    if (hspd > -hspd_max){
			hspd -= accel	                                //accelerate if not at max speed left
		} else { 
			hspd = -hspd_max 
		}
	   // image_xscale = -1									//flip the sprite to face left
	    if grounded{
	        //sprite_index= spr_player_run
	    }
	}else if keyboard_check(vk_right){                     //otherwise if D same deal in other direction...
	        if (hspd < hspd_max){
				hspd += accel	
			} else {
				hspd = hspd_max
			}
	    image_xscale = 1									//flip the sprite to face right
	    if grounded{										//only change to walking sprite if on the ground
	       // sprite_index= spr_player_run
	    }
	}else{		
		//if not pressing either direction..
	    if grounded{
			hspd = lerp(hspd, 0, .1)						//..and on the ground.. slow me
	        //sprite_index= spr_player_idle					//..show idle animation!
	    }
	}

	#endregion

	#region jumping and falling
	
		if keyboard_check_pressed(vk_up) and isPlayer{	// "input caching"
			jump_pressed = true
			landsnd = true
			alarm[1] = jump_pressed_timer		// saves the key press for some frames
			//audio_play_sound(snd_jump1, 0, false) //soundid,priority,loop
		
		}

		if grounded {							// if player is touching the ground or platform
			vspd = 0							// set our jump value to 0 so we don't move
	
		}else{									
												// if player is NOT on the ground..
			if just_jumped{
				if keyboard_check(vk_up){	// ..allow player to hold the jump button for increased height
					jump_pressed = false
					vspd = -jump_max
				} else {
					just_jumped = false
					alarm[0] = 0
				}
			}
	
		    if vspd > 0{						// use jump sprite for jump, fall sprite for fall!
		       // sprite_index= spr_player_jump
		    }else{
		       // sprite_index= spr_player_fall
		    }
	}

	if jump_pressed
	and jumps_spent < num_jump {			//check for jump key only if we have jumps left to use
	    jump_pressed = false				// turn off our jump key, because we used it
		vspd = -jump_max					// set our jump value to its max to start the jump
    								      
		if grounded == false{				// if not on the ground..
			jumps_spent += 1				// .. use an air jump
		}
		if jump_hold > 0{
			just_jumped = true
			alarm[0] = jump_hold
		}
		
		grounded=false						// we're not on the ground anymore! we jumped!
	}

	#endregion


	#region movement and collisions

	MoveCollide() // < - wow, big script!

	//are we on the ground?
	if(place_meeting(x, y+1, obj_collidable)){
		alarm[2] = coyote_time				// while on a platform, hold this timer at maximum
		grounded = true
		jumps_spent = 0
		if landsnd {
		//audio_play_sound(snd_land,0,false)
			//landsnd = false
		}
	} else {
		grounded = false
	}
	#endregion
}

	if y > room_height+30 and room != Room_Lock {
		dead = true
	}
}

if dead and dead_timer = 0{
	audio_play_sound(snd_fail,0,0)
	dead_timer = dead_timer_max
	with (obj_instrument) {
        x = start_x;
        y = start_y;
		//obj_instrument.returning = true
		//reset obj_player's array of collected instrument
		obj_player.collected = 0
        obj_instrument.following = false;
        obj_instrument.instrument_on = false; 
		obj_instrument.position_num = 0
		
		ResetStateArrays(1,0,0);
    }
}
if dead_timer > 0 {
	dead_timer -= 1
	image_xscale *= 0.9
	image_yscale *= 0.9
	image_angle += 15
}
if dead_timer = 0  and dead = true {
	dead = false
	image_xscale = 1
	image_yscale = 1
	image_angle = 0
	x = start_x
	y = start_y
}
if room != Room_Lock {
	if x < 0 {
		x = 0
	}

	if x > room_width {
		x = room_width
	}
}

if collision_rectangle(bbox_left, bbox_top,bbox_right, bbox_bottom-20,obj_platform,false,true){
	x = previous_x
	y = previous_y
	grounded = false
	vspd = 0
	can_jump = false
}