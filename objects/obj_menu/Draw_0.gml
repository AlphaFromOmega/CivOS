/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_window, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
draw_rectangle_colour(x + 3, y + 3, x + 24, y + size.y - 4, $F0CAA6, $F0CAA6, $800000, $800000, false);
draw_set_color(c_white);
draw_set_font(fnt_logo);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text_transformed(x + 14, y + size.y - 6, "CivOS", 1, 1, 90)
