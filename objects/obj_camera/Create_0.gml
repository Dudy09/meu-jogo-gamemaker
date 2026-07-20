target = obj_player;

cam_width = 640;
cam_height = 360;

view_enabled = true;
view_set_visible(0, true)

camera = camera_create_view(0, 0, cam_width, cam_height, 0, noone, -1, -1, -1, -1)
view_set_camera(0, camera)