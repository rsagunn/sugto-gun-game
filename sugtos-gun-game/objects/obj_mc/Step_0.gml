/// @description Player Movement
// Check for death
if health_ <= 0 {
	room_goto(rm_dead)
}

var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if hinput != 0 {
	speed_[h] += hinput*acceleration_;
	speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);
	var flipped = (mouse_x > x)*2-1;
	image_speed = flipped*hinput*.6;
} else {
	speed_[h] = lerp(speed_[h], 0, friction_);
	image_speed = 0;
	image_index = 0;
}



if !place_meeting(x, y+1, obj_solid) {
	speed_[v] += gravity_;
	image_speed = 0;
	image_index = 6;
} else {
	if keyboard_check_pressed(vk_up) {
		speed_[v] = jump_height_;
		x_scale_ = image_xscale*.8;
		y_scale_ = image_yscale*1.4;
	}
}


// Dash logic
if keyboard_check_pressed(ord("Q")) && dash_timer == 0 && speed_[h] != 0 {
    dashing = true;
    dash_timer = dash_duration;

    if !place_meeting(x, y+1, obj_solid) {
        // If in the air, dash upward
        speed_[v] = -dash_force; 
    } else {
        // Dash in the direction of movement
        speed_[h] = sign(speed_[h]) * dash_force;
    }
}

// Apply dash movement
if dashing {
    move(speed_, 0);

    // Reduce dash timer
    dash_timer -= 1;
    if dash_timer <= 0 {
        dashing = false; // End dash
    }
}




move(speed_, 0);

// Check for landing
if place_meeting(x, y+1, obj_solid) && !place_meeting(x, yprevious+1, obj_solid) {
	x_scale_ = image_xscale*1.4;
	y_scale_ = image_yscale*.8;
}

// Move back to normal scale
x_scale_ = lerp(x_scale_, image_xscale, .2);
y_scale_ = lerp(y_scale_, image_yscale, .2);

// Grenade
keyGrenade = keyboard_check_pressed(ord("E"));
if(keyGrenade){
	instance_create_depth(x, y, -100, obj_grenade)
}


