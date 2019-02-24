switch (state) {
	case "chase":
		#region Chase State
		set_state_sprite(s_boss_walk, sprite_speed, 0);
		boss_chase_state();
		boss_knockback();
		#endregion
		break;
	
	case "stall":
		#region Stall State
		set_state_sprite(s_boss_idle, sprite_speed, 0);
		if (alarm[1] <= 0) {
			state = "chase";	
		}
		boss_knockback();
		#endregion
		break;
		
	case "attack":
		#region Attack State
		set_state_sprite(s_boss_attack, attack_speed, 0);
		if (animation_hit_frame(7)) {
			audio_play_sound(a_medium_hit, 2, false);
			audio_play_sound(a_big_hit, 5, false);
			create_hitbox(x, y, self, s_boss_attack_damage, 10, 3, 20, image_xscale);
			add_screenshake(10, 16);
		}
		if (animation_end()) {
			state = "stall";
			alarm[1] = 30;
		}
		boss_knockback();
		#endregion
		break;
		
	case "death":
		#region Death State
		death_state(s_boss_die);
		#endregion
		break;
		
	default:
		break;
}