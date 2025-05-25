function enemy_fire_bullet() {
	// Create a bullet
	if alarm[0] <= 0 {
		var dir = point_direction(x, y, obj_mc.x, obj_mc.y-obj_mc.sprite_height/2);
		var x_offset = lengthdir_x(16, dir);
		var y_offset = lengthdir_y(16, dir);

		var bullet = instance_create_layer(x+x_offset, y+y_offset, "Instances", obj_bulletenemy);
		bullet.direction = dir;
		bullet.image_angle = dir;
		alarm[0] = bullet_cooldown_;
	}


}
