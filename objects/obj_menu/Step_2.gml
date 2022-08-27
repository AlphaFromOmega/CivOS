/// @description Insert description here
// You can write your code in this editor
image_xscale = size.x/sprite_get_width(spr_window)
image_yscale = size.y/sprite_get_height(spr_window)

for (var i = 0; i < array_length(buttons); i++;)
{
	buttons[i].x = x + 25;
	buttons[i].y = y + 3 + i * 32;
}

if (mouse_check_button_pressed(mb_any) && !obj_mouse.is_instance_hovered(id))
{
	instance_destroy();
}
