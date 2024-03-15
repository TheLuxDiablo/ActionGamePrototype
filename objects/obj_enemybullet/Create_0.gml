damage = 5;
range = 160;
owner_id = noone;
knockback_time = 5;

function bullet_die() {
	speed = 0;
	instance_change(obj_bullet_explode, false);
}