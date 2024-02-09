/// @description Basic character functions
// You can write your code in this editor

move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;

if ((x < 0 + sprite_width && move_x < 0) || 
	(x > room_width - sprite_width && move_x > 0))
{
	move_x = 0;	
}

var _tilemap = layer_tilemap_get_id("JungleTiles");

if (move_x == 0)
{
	sprite_index = spr_standing;
}
else
{
	if (move_x > 0)
	{
		image_xscale = 1;
		sprite_index = spr_run;
	}
	else
	{
		image_xscale = -1;
		sprite_index = spr_run;
	}
}

if (place_meeting(x, y + 3, _tilemap))
{
	move_y = 0;
	if (keyboard_check(ord("W"))) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, _tilemap, 4, 0, 0, move_speed, -1);
x = clamp(x, 0 + 10, room_width + 20);