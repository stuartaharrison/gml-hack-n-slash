if (creator == noone || creator == other || ds_list_find_index(hit_objects, other) >= 0) {
	exit;
}

ds_list_add(hit_objects, other);

other.hp -= damage;
other.state = "knockback";
other.image_xscale = -image_xscale;
other.knockback_speed = knockback * image_xscale;
