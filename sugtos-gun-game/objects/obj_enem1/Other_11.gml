if instance_exists(obj_mc) {
	if distance_to_object(obj_mc) >= 48 {
		state_ = MOVEMENT_;
	}

	// Create a bullet
	if alarm[0] <= 0 {
		var dir = point_direction(x, y, obj_mc.x, obj_mc.y-obj_mc.sprite_height/2);
		var x_offset = lengthdir_x(20, dir);
		var y_offset = lengthdir_y(20, dir);

		var bullet = instance_create_layer(x+x_offset, y+y_offset, "Instances", obj_bulletenemy);
		bullet.direction = dir;
		alarm[0] = bullet_cooldown_;
	}
}