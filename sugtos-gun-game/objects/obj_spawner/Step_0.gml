/// @description Spawn enemies
if !instance_exists(obj_enem1) {
	repeat (wave_) {
		instance_create_layer(x, y, "Instances", obj_enem1);
	}
	wave_ += 1;
}
