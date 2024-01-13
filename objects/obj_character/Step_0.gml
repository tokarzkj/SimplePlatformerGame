/// @description Basic character functions
// You can write your code in this editor

move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;

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

if (place_meeting(x, y + 2, _tilemap))
{
	move_y = 0;
	if (keyboard_check(ord("W"))) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, _tilemap);

//motion_add(90, -1);

//if (place_meeting(x, y + 10, _tilemap))
//{	
//	motion_set(90, 0);
//}