if(instance_exists(target))
{
	var _target_x = target.x - (cam_width / 2);
	var _target_y = target.y - (cam_height / 2);
	
	var _current_x = camera_get_view_x(camera);
	var _current_y = camera_get_view_y(camera);
	
	var _new_x = lerp(_current_x, _target_x, 0.1);
	var _new_y = lerp(_current_y, _target_y, 0.1);
	
	_new_x = clamp(_new_x, 0 ,room_width - cam_width);
	_new_y = clamp(_new_y, 0 ,room_height - cam_height);
	
	camera_set_view_pos(camera, _new_x, _new_y);
}