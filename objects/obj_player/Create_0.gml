/// @description Insert description here
// You can write your code in this editor
move_spd = 8
collected = 0
move_dir = ""


///----Platforming---///

hspd_max = 15			// maximum left/right speed
accel = 0.8			// left/right movement acceleration
jump_max= 8		// strength of upward force
grav_amt= 0.7			// strength of downward force
jump_hold = .15 * room_speed	// time you can hold for a higher jump
num_jump = 2		// number of jumps before needing to touch ground
jump_pressed_timer = 40	// number of frames to save the "jump" input, aka "input caching"
coyote_time = 5		// number of frames before you fall when stepping off platform
landsnd = false

//_____________________________________________________________________
isPlayer = true

#region Do not change these.
hspd = 0
vspd = 0
grounded=false
just_jumped = false
jumps_spent = 0
jump_pressed = false
x_remainder = 0
y_remainder = 0
image_speed=1
dead = false
#endregion

start_x = x
start_y = y

dead_timer_max = 30
dead_timer = 0