/// @description
if (!ds_exists(depth_grid, ds_type_grid)) exit;

shader_set(shdPassThrough); // set optimized shader

// loop through all the instances
var height = ds_grid_height(depth_grid);

for (var i = 0; i < height; i++) {
	var inst = depth_grid[# 0, i];
	
	//if (is_undefined(inst) or !instance_exists(inst)) {
	//	ds_grid_delete_row(depth_grid, i);
	//	continue;
	//}
	
	with (inst) { // run the instance's draw event
		event_perform(ev_draw, 0);
	}
}

shader_reset();