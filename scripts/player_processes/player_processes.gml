function reset_variables() {
	left = 0;
	right = 0;
	up = 0;
	down = 0;
}

function get_input() {
	if keyboard_check(ord("A")) image_angle += 1;
	if keyboard_check(ord("D")) image_angle -= 1;
	if keyboard_check(ord("W")) up      = 1;
	if keyboard_check(ord("S")) down    = 1;
}

function calc_movement() {
	vmove = down - up;

	if vmove != 0 {
		var _dir = point_direction(0, 0, x, vmove);
		
		vmove = lengthdir_y(walk_spd, _dir);
		
		y += vmove;
	}
}