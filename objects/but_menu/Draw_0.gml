/// @description Insert description here
draw_sprite_ext(spr_button, active, x, y, image_xscale, image_yscale, image_angle, buttonBlend, image_alpha)
draw_set_color(c_black)

var xt = x + 4
if (sprite_index >= 0)
{
	var scale = 1;
	if (sprite_get_width(sprite_index) > sprite_get_height(sprite_index))
	{
		scale = 16/sprite_get_width(sprite_index);
	}
	else
	{
		scale = 16/sprite_get_height(sprite_index);
	}
	draw_sprite_ext(sprite_index, image_index, xt + 6, y + 11, scale, scale, 0, c_white, 1)
	xt += 16
}


draw_set_halign(fa_left)
draw_set_valign(fa_center)

draw_set_font(fnt_defaultbold)
draw_text(xt, y + 11, "Menu")
