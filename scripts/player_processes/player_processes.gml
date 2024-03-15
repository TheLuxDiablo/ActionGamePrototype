function reset_variables() {
	left = 0;
	right = 0;
	up = 0;
	down = 0;
}

function get_input() {
	if keyboard_check(ord("A")) left    = 1;
	if keyboard_check(ord("D")) right   = 1;
	if keyboard_check(ord("W")) up      = 1;
	if keyboard_check(ord("S")) down    = 1;
}

function calc_movement() {
	hmove = right - left;
	vmove = down - up;
	
	if hmove != 0 global.facing = hmove;
	
	if hmove != 0 or vmove != 0 {
		var _dir = point_direction(0, 0, hmove, vmove);
		
		hmove = lengthdir_x(walk_spd, _dir);
		vmove = lengthdir_y(walk_spd, _dir);
		
		x += hmove;
		y += vmove;
	}
}

function collision() {
	var _tx = x;
	var _ty = y;
	
	x = xprevious;
	y = yprevious;
	
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	
	repeat(_disx) {
		if !place_meeting(x + sign(_tx - x), y, obj_solid) x += sign(_tx - x);
	}
	repeat (_disy) {
		if !place_meeting(x, y + sign(_ty - y), obj_solid) y += sign(_ty - y);
	}
}

function anim() {
	if hmove != 0 or vmove != 0 {
		sprite_index = spr_player_walk;
	} else {
		sprite_index = spr_player_idle;
	}
}

function check_fire() {
	if mouse_check_button(mb_left) {
		if can_fire {
			audio_play_sound(s_bullet, 10, false);
			global.shake = true
			obj_camera.alarm[0] = 7;
			can_fire = false;
			alarm[0] = fire_rate;
			
			var _dir = point_direction(x, y, (mouse_x + random_range(-5,5)), mouse_y);
			var _fx = instance_create_layer(x+lengthdir_x(30,obj_playergun.image_angle),y+lengthdir_y(50,obj_playergun.image_angle), "Bullets", obj_bullet_explode);
			with (_fx) {
				direction = _dir;
				image_angle = _dir;
			}
			var _inst = instance_create_layer(x+lengthdir_x(30,obj_playergun.image_angle),y+lengthdir_y(30,obj_playergun.image_angle), "Bullets", obj_bullet);
			with (_inst) {
				speed = other.bullet_speed;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
				
			}
		}
	}
}