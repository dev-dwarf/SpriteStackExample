///@function draw_billboard_sprite()
///@param sprite_index	
///@param image_index
///@param x				
///@param y				
///@param image_xscale	
///@param image_yscale	
///@param image_angle	
///@param image_blend	
///@param image_alpha	

var _sprite_index	= argument[0];
var _image_index	= argument[1];
var _x				= argument[2];
var _y				= argument[3];
var _z				= argument[4];
var _image_xscale	= argument[4+1];
var _image_yscale	= argument[5+1];
var _image_angle	= argument[6+1];
var _image_blend	= argument[7+1];
var _image_alpha	= argument[8+1];
							   
// makes sure that the sprite is always draw straight up, relative to the camera

// to prevent squashing when using orthographic projection
_image_yscale *= power(oCamera.image_zscale/oCamera.zscale_min, 1.25); // weird magic number, but hey, it works

draw_sprite_ext(_sprite_index, _image_index, _x - _z * oCamera.x_step, _y - _z * oCamera.y_step, _image_xscale, _image_yscale, _image_angle-oCamera.angle, _image_blend, _image_alpha);