switch (state) {
	case "chase":
		#region Chase State
		set_state_sprite(s_knight_walk, sprite_speed, 0);
		if (!instance_exists(o_skeleton)) {
			break;
		}
		
		image_xscale = sign(o_skeleton.x - x);
		if (image_xscale == 0) {
			image_xscale = 1;	
		}
		
		var direction_facing = image_xscale;
		var distance_to_player = point_distance(x, y, o_skeleton.x, o_skeleton.y);
		if (distance_to_player <= attack_range) {
			state = "attack";
		}
		else {
			move_and_collide(direction_facing * chase_speed, 0);	
		}
		#endregion
		break;
		
	case "attack":
		#region Attack State
		set_state_sprite(s_knight_attack, attack_speed, 0);
		
		if (animation_hit_frame(4)) {
			create_hitbox(x, y, self, s_skeleton_attack_one_damage, 4, 4, 10, image_xscale);
		}	
		
		if (animation_end()) {
			state = "chase";	
		}
		#endregion
		break;
		
	case "knockback":
		#region Knockback State
		knockback_state(s_knight_hitstun, "chase");
		#endregion
		break;
		
	default:
		state = "chase";
		break;
}