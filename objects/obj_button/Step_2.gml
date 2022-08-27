released = false;
if (mouse_check_button_pressed(mb_left) && obj_mouse.hovering == id)
{
	pressed = true;
}
if (mouse_check_button_released(mb_left) && pressed)
{
	pressed = false;
	released = true;
}
image_xscale = size.x/sprite_get_width(spr_button)
image_yscale = size.y/sprite_get_height(spr_button)
