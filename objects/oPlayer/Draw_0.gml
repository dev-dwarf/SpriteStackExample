/// @description
//depth = compute_3d_depth(x, y, z) - 2000; //bad, uses too many layers
draw_billboarded_sprite(sPlayerShadow, image_index, x, y, z-1, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_billboarded_sprite(sprite_index, image_index, x, y, z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_billboarded_sprite(sPlayerFace, face_index, x, y, z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);