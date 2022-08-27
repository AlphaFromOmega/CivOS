/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_mouse_pointer

var lastWindow = hovering
var index = noone

ds_list_clear(hoveringList);
var num = instance_position_list(mouse_x, mouse_y, all, hoveringList, false);
for (var i = 0; i < num; i++;)
{
	if (hoveringList[| i].id == id)
	{
		ds_list_delete(hoveringList, i)
	}
	if (index < 0 || hoveringList[| i].depth < index.depth)
	{
		index = hoveringList[| i]
	}
}
hovering = index
if (debug_mode)
{
	if (hovering != lastWindow)
	{
		if (hovering < 0)
		{
			show_debug_message("No longer hovering")
		}
		else
		{
			show_debug_message("Now hovering over: " + object_get_name(hovering.object_index))
		}
	}
}
