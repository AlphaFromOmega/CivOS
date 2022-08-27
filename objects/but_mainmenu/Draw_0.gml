/// @description Insert description here
// You can write your code in this editor
if (obj_mouse.hovering == id)
{
	draw_rectangle_color(x, y, x + size.x, y + size.y, $880000, $880000, $880000, $880000, false);
	draw_set_color(c_white)
}
else
{
	draw_set_color(c_black)
}

var xt = x + 4
if (sprite_index >= 0)
{
	var scale = 1;
	if (sprite_get_width(sprite_index) > sprite_get_height(sprite_index))
	{
		scale = 24/sprite_get_width(sprite_index);
	}
	else
	{
		scale = 24/sprite_get_height(sprite_index);
	}
	draw_sprite_ext(sprite_index, image_index, min(xt + 12, x + size.x/2), y + size.y/2, scale, scale, 0, c_white, 1)
	xt += 28
}

draw_set_halign(fa_left)
draw_set_valign(fa_center)

draw_set_font(fnt_default)
draw_text(xt, y + size.y/2, name)
