event_inherited();
state = "chase";
hp = 1;
max_hp = hp;

image_speed = 0.5;
hspeed = random_range(2, 3);

if (instance_exists(o_skeleton)) {
	hspeed *= sign(o_skeleton.x - x);	
}

image_xscale = sign(hspeed);
damage = 5;
attacked = false;
experience = 2;
knockback = 4;