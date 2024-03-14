if (instance_exists(obj_player))
{
	x = obj_player.x
	y = obj_player.y
}

dir = point_direction(x,y,mouse_x,mouse_y)
image_angle += sin(degtorad(dir - image_angle)) * rspeed;

if (dir >= 90 && dir <= 270)
{
	image_yscale = -1;
} else {
	image_yscale = 1;
}