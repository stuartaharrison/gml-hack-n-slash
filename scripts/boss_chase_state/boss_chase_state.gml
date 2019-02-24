if (!instance_exists(o_skeleton)) {
	exit;
}
		
var direction_facing = image_xscale;
var distance_to_player = point_distance(x, y, o_skeleton.x, o_skeleton.y);

if (distance_to_player <= attack_range && distance_to_player > backup_range) {
	state = "attack";
}

if (distance_to_player > attack_range) {
	image_xscale = sign(o_skeleton.x - x);
	if (image_xscale == 0) {
		image_xscale = 1;	
	}
	
	move_and_collide(direction_facing * chase_speed, 0);
}

if (distance_to_player <= backup_range) {
	if (direction_facing != sign(o_skeleton.x - x)) {
		image_xscale = sign(o_skeleton.x - x);
		if (image_xscale == 0) {
			image_xscale = 1;	
		}
	}
	
	move_and_collide(-direction_facing * chase_speed, 0);	
}