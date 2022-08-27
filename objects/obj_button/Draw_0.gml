/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_button, pressed, x, y, image_xscale, image_yscale, image_angle, buttonBlend, image_alpha)
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
	draw_sprite_ext(sprite_index, image_index, min(xt + 8, x + size.x/2), y + size.y/2, scale, scale, 0, c_white, 1)
}
