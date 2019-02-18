if (creator == noone || creator == other || ds_list_find_index(hit_objects, other) >= 0) {
	exit;
}

ds_list_add(hit_objects, other);

other.hp -= damage;

if (instance_exists(o_skeleton) && creator.object_index == o_skeleton && other.hp <= 0) {
	o_skeleton.kills += 1;	
}

other.state = "knockback";
other.image_xscale = -image_xscale;
other.knockback_speed = knockback * image_xscale;
