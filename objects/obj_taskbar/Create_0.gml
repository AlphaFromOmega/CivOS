/// @description Insert description here
// You can write your code in this editor
image_xscale = room_width
image_yscale = 28/sprite_get_height(sprite_index)
x = 0;
y = room_height - 28

depth = -1000;

menuButton = instance_create_depth(x + 2, y + 4, depth - 1, but_menu);
menu = noone;


buttons = ds_list_create();
