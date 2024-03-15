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

if (create)
{
	for (i = 0; i < 2; i++)
	{
		_enemy = instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_enemy);
		_enemy.move_spd = global.enemies[0][$ "Speed"]
		_enemy.enemy_hp = global.enemies[0][$ "Health"]
	}
	create = false;
}