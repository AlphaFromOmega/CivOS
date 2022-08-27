/// @description Insert description here
// You can write your code in this editor
hovering = noone;
hoveringList = ds_list_create()

is_instance_hovered = function(_id)
{
	for (var i = 0; i < ds_list_size(hoveringList); i++;)
	{
		if (hoveringList[| i].id == _id)
		{
			return true;
		}
	}
	return false;
}
