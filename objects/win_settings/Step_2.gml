/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

fullscreenButton.x = x + 64
fullscreenButton.y = y + 64

if (fullscreenButton.released)
{
	window_set_fullscreen(!window_get_fullscreen());
}
