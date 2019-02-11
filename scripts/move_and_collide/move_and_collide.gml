///@arg xspeed
///@arg yspeed
var xspeed = argument0;
var yspeed = argument1;

if (!place_meeting(x + xspeed, y, o_wall)) {
	x += xspeed;	
}

if (!place_meeting(x, y + yspeed, o_wall)) {
	y += yspeed;	
}