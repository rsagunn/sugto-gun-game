// Move force
if instance_exists(obj_mc) {
	var dir = point_direction(x, y, obj_mc.x, obj_mc.y);
	speed_[h] = lengthdir_x(max_speed_, dir);
	speed_[v] = lengthdir_y(max_speed_, dir);
	move(speed_);

	// Push force
	move(speed_push_);
	if !place_meeting(x, y, obj_enem1) {
		speed_push_[h] = lerp(speed_push_[h], 0, .1);
		speed_push_[v] = lerp(speed_push_[v], 0, .1);
	}

	// Death
	if health_ <= 0 {
		instance_destroy();
	}

	if distance_to_object(obj_mc) < 48 {
		state_ = ATTACK_;
	}
}