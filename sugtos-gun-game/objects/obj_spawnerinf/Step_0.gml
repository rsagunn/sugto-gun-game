/// @description Spawn enemies
if !instance_exists(obj_enem1) {
	repeat (wave_) {
		instance_create_layer(random_range(0, room_width), random_range(-64, -32), "Instances", obj_enem1);
	}
	wave_ += 4;
}
