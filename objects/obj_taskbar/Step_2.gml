/// @description Insert description here
// You can write your code in this editor
var sepSize = 4
var maxSize = 120
var buttonArea = room_width - (menuButton.x + menuButton.size.x) - 4
for (var i = 0; i < ds_list_size(buttons); i++;)
{
	if (instance_exists(buttons[| i]))
	{
		buttons[| i].size.x = min(maxSize, (buttonArea - ds_list_size(buttons) * 4) /ds_list_size(buttons))
		buttons[| i].x = menuButton.x + menuButton.size.x + sepSize + i * (buttons[| i].size.x + sepSize)
		buttons[| i].y = y + 4
	}
	else
	{
		ds_list_delete(buttons, i)
	}
}
if (menuButton.released)
{
	if (instance_exists(menu))
	{
		instance_destroy(menu);
	}
	else
	{
		menu = instance_create_depth(x, y, depth + 100, obj_menu)
	}
}
if (instance_exists(menu))
{
	if (menu.y + menu.size.y > y)
	{
		var spd = 32
		menu.y = max(menu.y - spd, y - menu.size.y);
	}
}
