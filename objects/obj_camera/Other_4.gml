view_enabled=true;
view_visible[0]=true;
surface_resize(application_surface, display_get_width(),display_get_height())
window_center();


#macro TS    48

var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)

global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS);

mp_grid_add_instances(global.mp_grid, obj_solid, false);