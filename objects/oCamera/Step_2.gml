/// @description


// debug stuff to rotate and change z_scale
//angle += 0.5;

// compute coords for drawing the stacked sprites, change to vector eventually
x_step = dcos(90 + angle);
y_step = dsin(90 + angle);


var targ_x = window_get_width()/2; var targ_y = window_get_height()/2;
	
var camera_x_axis = clamp((window_mouse_get_x() - targ_x)/8, -2, 2);
var camera_y_axis = clamp((window_mouse_get_y() - targ_y)/8, -2, 2);
	
window_mouse_set(targ_x, targ_y)

angle		 += camera_x_axis;
image_zscale += camera_y_axis * 0.01;
image_zscale  = clamp(image_zscale, zscale_min, zscale_max);

// squash the view, making the projection more isometric
//	this works by making the larger view_height get crushed down into the same application_surface size
//	then reposition view to keep it moving around the same point
	
stacking_fidelity = round(image_zscale); //more dynamic amount works better for larger range of Zs
//stacking_fidelity = 2.0; //otherwise you can use a constant, giving consistent performance
z_step = 1/stacking_fidelity;

var new_width = DEFAULT_WIDTH  ;
var new_height= DEFAULT_HEIGHT * image_zscale;

target_x = oPlayer.x ;
target_y = oPlayer.y ;

var new_x = target_x - new_width/2;
var new_y = target_y - new_height/2;

// set new camera values
camera_set_view_pos(view_camera[0], new_x, new_y);
camera_set_view_size(view_camera[0], new_width, new_height);
camera_set_view_angle(view_camera[0], angle);


if (check(vk_q)) {
	game_end();	
}