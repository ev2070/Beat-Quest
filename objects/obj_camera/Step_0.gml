/// @description Insert description here
// You can write your code in this editor
if (instance_exists(follow_target)) {
    var target_x = follow_target.x + x_offset;
    var target_y = follow_target.y + y_offset;

   
    x = lerp(x, target_x, lerp_speed);
    y = lerp(y, target_y, lerp_speed);


    camera_set_view_pos(view_camera[0], x - (view_wview[0] / 2), y - (view_hview[0] / 2));
}