switch (state) {
	case "chase":
		#region Chase State
		if (!instance_exists(o_skeleton)) exit;
		if (place_meeting(x, y, o_skeleton) && !attacked && o_skeleton.state != "roll") {
			create_hitbox(x, y, self, sprite_index, knockback, 1, damage, image_xscale);
			attacked = true;
		}
		if (attacked) {
			vspeed = -1;	
		}
		#endregion
		break;
}