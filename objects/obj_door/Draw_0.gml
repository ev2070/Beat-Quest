/// @description Insert description here
// You can write your code in this editor
draw_self();
if display_error {
//	draw_set_color('c_red')
	draw_ellipse_color(x,y-110,x+300,y-10,c_white,c_white,false)
	draw_set_color(c_red)
	draw_text(x+20,y-60,"Incorrect number of friends!")
}