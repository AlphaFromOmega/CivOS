/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (instance_exists(owner))
{
	if (pressed)
	{
		owner.bringToFront();
		owner.active = true;
	}
	active = owner.active
	name = owner.name;
	sprite_index = owner.sprite_index;
	image_index = owner.image_index;
}
