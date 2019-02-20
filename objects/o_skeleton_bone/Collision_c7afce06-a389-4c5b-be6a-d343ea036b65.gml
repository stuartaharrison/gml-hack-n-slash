if (vspeed > 1) {
	vspeed *= -0.5;	
}
else {
	vspeed = 0;
	while (!place_meeting(x, y, o_wall)) {
		y++;	
	}
	gravity = 0;
	friction = 1;
}