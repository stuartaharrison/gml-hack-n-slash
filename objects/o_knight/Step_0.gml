switch (state) {
	case "chase":
		set_state_sprite(s_knight_walk, 0.2, 0);
		if (!instance_exists(o_skeleton)) {
			break;
		}
		
		image_xscale = sign(o_skeleton.x - x);
		if (image_xscale == 0) {
			image_xscale = 1;	
		}
		
		var distance_to_player = point_distance(x, y, o_skeleton.x, o_skeleton.y);
		if (distance_to_player > 42) {
			move_and_collide(image_xscale * 1, 0);	
		}
		break;
}