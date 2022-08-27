/// @description Insert description here
// You can write your code in this editor
active = false
move = false

buttons[0] = instance_create_depth(x + size.x - 42, y + 5, depth - 1, but_maximise)
buttons[1] = instance_create_depth(x + size.x - 21, y + 5, depth - 1, but_exit)

orginalLocation = new Vector2()
originalSize = new Vector2();
movePoint = new Vector2()
reizeAxis = new Vector2()

maximised = false;

selected = 0

windowSprite = spr_window;
mask_index = windowSprite

buttonLocation = ds_list_size(obj_taskbar.buttons);
button = instance_create_depth(obj_taskbar.x, obj_taskbar.y, obj_taskbar.depth - 1, but_window);
button.owner = id;
ds_list_add(obj_taskbar.buttons, button);

bringToFront = function()
{
	with (obj_window)
	{
		selected++;
		depth = selected * 50;
	}
	depth = 0;
	selected = 0;
}
