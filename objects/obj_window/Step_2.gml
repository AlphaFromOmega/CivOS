/// @description Insert description here
// You can write your code in this editor
image_xscale = size.x/sprite_get_width(windowSprite)
image_yscale = size.y/sprite_get_height(windowSprite)

buttons[0].x = x + size.x - 42
buttons[1].x = x + size.x - 21

for (var i = 0; i < array_length(buttons); i++;)
{
	buttons[i].y = y + 5
	buttons[i].depth = depth - 1;
}
