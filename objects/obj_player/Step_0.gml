var _right = keyboard_check_pressed(vk_right);
var _left = keyboard_check_pressed(vk_left);
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);

if (x % 16 == 0 && y % 16 == 0)
{
	velh = (_right - _left) * vel;
	velv = (_down - _up) * vel;
}
move_and_collide (velh, velv, all);