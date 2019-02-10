// check state machine
switch (state) {
	case "move":
		#region Move State
		if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
			move_and_collide(4, 0);
			image_xscale = 1;
			sprite_index = s_skeleton_run;
			image_speed = 0.6;
		}

		// get when key is left
		if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
			move_and_collide(-4, 0);
			image_xscale = -1;
			sprite_index = s_skeleton_run;
			image_speed = 0.6;
		}

		// get idle
		if (!keyboard_check(vk_left) && !keyboard_check(ord("A")) && !keyboard_check(vk_right) && !keyboard_check(ord("D"))) {
			sprite_index = s_skeleton_idle;
			image_speed = 0.4;
		}
	
		// roll
		if (keyboard_check_pressed(vk_space)) {
			state = "roll";
		}
		
		// attack 1
		if (keyboard_check_pressed(vk_lcontrol)) {
			state = "attack one";
		}
		
		#endregion
		break;
		
	case "roll":
		#region Roll State
		set_state_sprite(s_skeleton_roll, 0.7, 0);
		if (image_xscale == 1) {
			move_and_collide(6, 0);
		}
	
		if (image_xscale == -1) {
			move_and_collide(-6, 0);
		}
		#endregion
		break;
		
	case "attack one":
		#region Attack One State
		set_state_sprite(s_skeleton_attack_one, 0.7, 0);
		if (keyboard_check_pressed(vk_lcontrol) && animation_hit_frame_range(2, 4)) {
			state = "attack two";
		}
		#endregion
		break;
		
	case "attack two":
		#region Attack Two State
		set_state_sprite(s_skeleton_attack_two, 0.7, 0);
		#endregion
		break;
}