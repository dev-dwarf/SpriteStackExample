///// @description
draw_set_font(font0);

draw_set_halign(fa_left);
draw_text(16, 16, "Press Q to quit.");

draw_set_halign(fa_right);
draw_text(display_get_gui_width() - 16, 16, "Made by dev_dwarf.");


draw_text_transformed(display_get_gui_width() - 16, display_get_gui_height()- 16, "I love comic sans and you cant stop me", 0.4, 0.4, 0);