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