/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);

var _result_text = "You Won!";
if (obj_game.game_result == GAME_STATUS.LOST)
{
	_result_text = "You Lost!";	
}
draw_text(500, 500, _result_text);
