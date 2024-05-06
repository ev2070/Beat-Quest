/// @description Insert description here
// You can write your code in this editor
draw_self()
//draw_text(x,y+50,collected)
draw_text(x,y,x)
//draw_text(x,y-200,start_x)
//draw_text(x+20,y,y)
//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,false);

//draw text for tutorial level.
if room = Room_Tutorial {
	//check x pos
	if instance_exists(obj_enemy) and (point2 + 600 > x) and (x > point2 - 300){
		draw_set_color(c_dkgray)
		draw_roundrect(x-240,y-270,x+300,y-180,false)
		draw_set_color(c_white)
		draw_roundrect(x-230,y-260,x+290,y-190,false)
		draw_set_color(c_black)
		draw_text(x-200,y-240,"Enemies! If they touch me, my friends will run away!")
		draw_text(x-200,y-220,"They must be hit by their matching bandmate.")
	}
	else {
	if collected = 0 {
		if (start_x + 200 > x) and (x > start_x - 200) {
			draw_set_color(c_dkgray)
		    draw_roundrect(x-240,y-250,x+210,y-180,false)
			draw_set_color(c_white)
			draw_roundrect(x-230,y-240,x+200,y-190,false)
			draw_set_color(c_black)
			draw_text(x-200,y-220,"I'm a drummer looking for bandmates..!")
		}
		else if (point1 + 200 > x) and (x > point1 - 200){
			draw_set_color(c_dkgray)
			draw_roundrect(x-240,y-250,x+10,y-180,false)
			draw_set_color(c_white)
			draw_roundrect(x-230,y-240,x,y-190,false)
			draw_set_color(c_black)
			draw_text(x-200,y-220,"I see one there!")
	
		}
	}
	else {
		draw_set_color(c_dkgray)
		draw_roundrect(x-240,y-250,x+30,y-180,false)
		draw_set_color(c_white)
		draw_roundrect(x-230,y-240,x+20,y-190,false)
		draw_set_color(c_black)
		draw_text(x-200,y-220,"I can throw them around!")
	}
	}
}