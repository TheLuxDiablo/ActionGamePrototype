if keyboard_check(ord("W"))
{
	speed = 3;
} else {
	speed = 0
}

if keyboard_check(ord("A"))
{
	image_angle += 4;
}
if keyboard_check(ord("D"))
{
	image_angle -= 4;
}
direction = image_angle;