/// @description Insert description here
// You can write your code in this editor
var axis = new Vector2(0, 0)
if (obj_mouse.hovering == id)
{
	if (reizeAxis.x == 0 && reizeAxis.y == 0)
	{
		if (!maximised)
		{
			axis.x = point_in_rectangle(mouse_x, mouse_y, x + size.x - 4, y, x + size.x, y + size.y) - point_in_rectangle(mouse_x, mouse_y, x, y, x + 4, y + size.y)
			axis.y = point_in_rectangle(mouse_x, mouse_y, x, y + size.y - 4, x + size.x, y + size.y) - point_in_rectangle(mouse_x, mouse_y, x, y, x + size.x, y + 4)
			if (axis.x != 0 || axis.y != 0)
			{
				var spr = spr_mouse_size_h;
				if (axis.x != 0)
				{
					spr = spr_mouse_size_h
				}
				if (axis.y != 0)
				{
					spr = spr_mouse_size_v
				}
				if ((axis.y * axis.x) == -1)
				{
					spr = spr_mouse_size_d0
				}
				if ((axis.y * axis.x) == 1)
				{
					spr = spr_mouse_size_d1
				}
				obj_mouse.sprite_index = spr
				if (mouse_check_button_pressed(mb_left))
				{
					active = true;
		
					reizeAxis.x = axis.x;
					reizeAxis.y = axis.y;
		
					movePoint = new Vector2(mouse_x, mouse_y)
					orginalLocation.x = x
					orginalLocation.y = y
					originalSize.x = size.x
					originalSize.y = size.y
				}
			}
		}
	}
	else
	{
		var spr = spr_mouse_size_h;
		if (reizeAxis.x != 0)
		{
			spr = spr_mouse_size_h
		}
		if (reizeAxis.y != 0)
		{
			spr = spr_mouse_size_v
		}
		if ((reizeAxis.y * reizeAxis.x) == -1)
		{
			spr = spr_mouse_size_d0
		}
		if ((reizeAxis.y * reizeAxis.x) == 1)
		{
			spr = spr_mouse_size_d1
		}
		obj_mouse.sprite_index = spr
	}


	
}
if (mouse_check_button_pressed(mb_left))
{
	if (obj_mouse.hovering == id && point_in_rectangle(mouse_x, mouse_y, x, y, x + size.x, y + size.y))
	{
		active = true;
		if !(axis.x != 0 || axis.y != 0)
		{
			if (!maximised && point_in_rectangle(mouse_x, mouse_y, x, y, x + size.x, y + 20) && !point_in_rectangle(mouse_x, mouse_y, buttons[0].x, buttons[0].y, buttons[array_length(buttons) - 1].bbox_right, buttons[array_length(buttons) - 1].bbox_bottom))
			{
				move = true
				movePoint = new Vector2(mouse_x - x, mouse_y - y)
			}
		}
		bringToFront();
	}
	else
	{
		if !(axis.x != 0 || axis.y != 0)
		{
			active = false
		}
	}
}
if (mouse_check_button_released(mb_left))
{
	move = false
	reizeAxis = new Vector2()
}

if (move)
{
	if (point_in_rectangle(mouse_x, mouse_y, 0, 0, room_width, room_height))
	{
		x = mouse_x - movePoint.x
		y = mouse_y - movePoint.y
	}
}
if (reizeAxis.x != 0)
{
	if (reizeAxis.x < 0)
	{
		var c = (max(112, originalSize.x + (mouse_x - movePoint.x) * reizeAxis.x) - originalSize.x)/reizeAxis.x
		x = orginalLocation.x + min(mouse_x - movePoint.x, c)
	}
	size.x = max(112, originalSize.x + (mouse_x - movePoint.x) * reizeAxis.x)
}
if (reizeAxis.y != 0)
{
	if (reizeAxis.y < 0)
	{
		var c = (max(27, originalSize.y + (mouse_y - movePoint.y) * reizeAxis.y) - originalSize.y)/reizeAxis.y
		y = orginalLocation.y + min(mouse_y - movePoint.y, c)
	}
	size.y = max(27, originalSize.y + (mouse_y - movePoint.y) * reizeAxis.y)
}
if (buttons[0].released)
{
	maximised = !maximised
	if (maximised)
	{
		orginalLocation.x = x;
		orginalLocation.y = y;
		x = -1;
		y = -1;
		originalSize.x = size.x;
		originalSize.y = size.y;
		size.x = room_width + 2
		size.y = obj_taskbar.y + 2
		buttons[0].sprite_index = spr_button_restore
	}
	else
	{
		x = orginalLocation.x;
		y = orginalLocation.y;
		size.x = originalSize.x;
		size.y = originalSize.y;
		buttons[0].sprite_index = spr_button_full
	}
}
if (buttons[1].released)
{
	instance_destroy();
}
