if (!instance_exists(o_skeleton)) exit;
var dir = point_direction(x, y, o_skeleton.x, o_skeleton.y);
var acceleration = 0.25;

motion_add(dir, acceleration);

if (speed > max_speed) {
	speed = max_speed;	
}
