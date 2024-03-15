camWidth = 640;
camHeight = 480;

follow = obj_player;
global.shake = false;

xTo = x;
yTo = y;

view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])

surface_resize(application_surface,camWidth,camHeight)
window_set_size(camWidth,camHeight)
window_center();
global.mp_grid = 0;

create = true;