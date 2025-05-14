//variables
if keyboard_check(vk_right)
{
	hspeed_ = 11;
} else if keyboard_check(vk_left) {
	hspeed_ = -11;
} else {
	hspeed_ = 0;
}

if !place_meeting(x, y+1, obj_solid) {
	vspeed_ += gravity_;
} //else {
	//if keyboard_check_pressed(vk_up) {
		//vspeed_ = -16;
	//}
//}
//collision
if place_meeting(x+hspeed_, y, obj_solid) {
	while !place_meeting(x+sign(hspeed_), y, obj_solid) {
		x += sign(hspeed_)
	}	
	hspeed_ = 0;
}
x += hspeed_;

if place_meeting(x, y+vspeed_, obj_solid) {
	while !place_meeting(x, y+sign(vspeed_), obj_solid) {
	}
	vspeed_ = 0;
}
y += vspeed_;