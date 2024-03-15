reset_variables();
get_input();
calc_movement();
anim();
check_fire();

if (global.playerHealth == 0)
{
	room_restart();
}