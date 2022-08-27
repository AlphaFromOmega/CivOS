/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(windowSprite, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)
if (active)
{
	draw_rectangle_color(x + 4, y + 4, x + size.x - 5, y + 21, $800000, $F0CAA6, $F0CAA6, $800000, false);
}
else
{
	draw_rectangle_color(x + 4, y + 4, x + size.x - 5, y + 21, $808080, $C0C0C0, $C0C0C0, $808080, false);
}

var xt = x + 6
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
	draw_sprite_ext(sprite_index, image_index, xt + 8, y + 13, scale, scale, 0, c_white, 1)
	xt += 16 + 2
}

draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_color(c_white)

draw_set_font(fnt_defaultbold)
var tname = name
if (((buttons[0].x - 4) - (xt + string_width(tname + " "))) < 1) 
{
	while (((buttons[0].x - 4) - (xt + string_width(tname + "... "))) < 1) 
	{
		tname = string_delete(tname, string_length(tname), 1)
	}
	tname += "..."
}
draw_text(xt, y + 13, tname)
xt += string_width(tname + " ")


draw_sprite_ext(spr_window_decor, 0, xt, y + 1, ((buttons[0].x - 4) - xt)/sprite_get_width(spr_window_decor), 1, 0, c_white, 0.4)
