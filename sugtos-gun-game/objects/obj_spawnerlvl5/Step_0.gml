// Check if there are no remaining enemies
if !instance_exists(obj_enem1) {
    if wave_ > max_waves { // Ensure all waves are completed
        room_goto(rm_3); // Move to the next room
    } else {
        repeat (wave_ * 7) { // Multiply enemies each wave
            instance_create_layer(random_range(0, room_width), random_range(-64, -32), "Instances", obj_enem1);
        }
        wave_ += 1;
    }
}
