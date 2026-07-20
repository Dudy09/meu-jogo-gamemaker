view_enabled = true;
view_set_visible(0, true);

camera = camera_create_view(0, 0, cam_width, cam_height, 0, noone, -1, -1, -1, -1);
view_set_camera(0, camera);

if(instance_exists(target))
{
	var _target_x = target.x - (cam_width / 2);
	var _target_y = target.y - (cam_height / 2);
	
	_target_x = clamp(_target_x, 0, room_width - cam_width);
	_target_y = clamp(_target_y, 0, room_height - cam_height);
	
	camera_set_view_pos(camera, _target_x, _target_y);
}