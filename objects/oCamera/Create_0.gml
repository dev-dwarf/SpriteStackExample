/// @description
angle = 0;

image_zscale = 1.25;
zscale_min = 1.25;
zscale_max = 2.25;

stacking_fidelity = 2;

target_x = room_width/2;
target_y = room_height/2;

x_step = dcos(90 + angle);
y_step = dsin(90 + angle);
z_step = 1/stacking_fidelity;

#region setup camera
view_enabled = true;
view_visible[0] = true;
view_camera[0] = camera_create_view(0, 0, DEFAULT_WIDTH, DEFAULT_HEIGHT, angle, -1, -1, -1, -1, -1);
#endregion

#region resize window


var scale = 4//display_get_height()/DEFAULT_HEIGHT;
var xx = (display_get_width()  - DEFAULT_WIDTH  * scale) / 2; //get centered coords
var yy = (display_get_height() - DEFAULT_HEIGHT * scale) / 2;

surface_resize(application_surface,DEFAULT_WIDTH*scale,DEFAULT_HEIGHT*scale);
display_set_gui_size(DEFAULT_WIDTH*scale,DEFAULT_HEIGHT*scale);
window_set_rectangle(xx, yy, DEFAULT_WIDTH*scale,DEFAULT_HEIGHT*scale); // centers window

global.gui_scale = scale;
#endregion

#region setup draw pipeline for maximum performance
//gpu_set_alphatestenable(true);
//gpu_set_alphatestref(240);

// disables drawing to the alpha channel
gpu_set_colorwriteenable(true, true, true, false);

//gpu_set_blendenable(false);
//shader_set(shdPassThrough);
#endregion

//show_debug_overlay(true)
randomize();