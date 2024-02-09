/// @description Set the camera for the game
// You can write your code in this editor
view_enabled = true;
view_visible[0] = true;

var _w = global.res_width;
var _h = global.res_height;
var _cam = camera_create_view(0, 0, _w / 2, _h / 2);

camera_set_view_target(_cam, obj_character);
camera_set_view_border(_cam, _w / 2, _h / 2);

view_camera[0] = _cam;

