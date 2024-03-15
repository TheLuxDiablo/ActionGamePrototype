distance_to_player = distance_to_object(obj_player)

if (distance_to_player <= los && !reset)
{
	active = true;
	pointdir = point_direction(x, y, obj_player.x, obj_player.y)
	
} else {
	active = false;
}

if (active)
{
	active = false;
	reset = true;
	alarm[2] = 10;
	var _dir = pointdir	
	var _inst = instance_create_layer(x+lengthdir_x(10,image_angle),y+lengthdir_y(10,image_angle), "Bullets", obj_enemybullet);
	_inst.speed = 6
	_inst.direction = _dir;
	_inst.image_angle = _dir;
	_inst.owner_id = noone
}

if (crystal_hp == 0)
{
	instance_destroy()
}
image_alpha = crystal_hp/10