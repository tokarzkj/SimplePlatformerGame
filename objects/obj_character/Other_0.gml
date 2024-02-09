/// @description Destroy if we go out of bounds
// You can write your code in this editor
if (y > room_height)
{
	obj_game.character_lives--;
	instance_destroy();
	
	if (obj_game.character_lives == 0)
	{
		
		obj_game.game_result = GAME_STATUS.LOST;
		room_goto_next();
	}
	else
	{
		instance_create_layer(30, 940, "Instances", obj_character);
	}
}