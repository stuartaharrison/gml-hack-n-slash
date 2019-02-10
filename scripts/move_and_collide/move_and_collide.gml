///@arg xspeed
///@arg yspeed
if (!place_meeting(x + argument0, y, o_wall)) {
	x += argument0;	
}

if (!place_meeting(x, y + argument1, o_wall)) {
	y += argument1;	
}