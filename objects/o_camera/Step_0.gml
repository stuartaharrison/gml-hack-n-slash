x += random_range(-screenshake, screenshake);
y += random_range(-screenshake, screenshake);

if (!instance_exists(o_skeleton)) exit;

var target_x = o_skeleton.x;
var target_y = (o_skeleton.y - 48);

x = lerp(x, target_x, 0.2);
y = lerp(y, target_y, 0.2);

camera_set_view_pos(camera, x - (width / 2), y - (height / 2));