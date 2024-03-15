if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

x = xTo
y = yTo

var _camx = x-(camWidth*0.5)
var _camy = y-(camHeight*0.5)

if (global.shake)
{
	var range = 3;
	camera_set_view_pos(view_camera[0], _camx+random_range(-range,range), _camy+random_range(-range,range));
} else {
	camera_set_view_pos(view_camera[0],_camx,_camy);
}