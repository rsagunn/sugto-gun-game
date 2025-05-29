/// @description Create the variables
speed_ = [0, 0];
max_speed_ = 4;
gravity_ = .5;
acceleration_ = 1;
friction_ = .3;
jump_height_ = -10;
max_health_ = 5;
health_ = max_health_;
invincible_ = false;
dash_speed = 8; // How fast the dash is
dash_duration = 15; // How many frames it lasts
dash_timer = 0; // Counts down while dashing
dashing = false; // Whether player is currently dashing
dash_cooldown = 60; // Frames between dashes
dash_timer = -dash_cooldown; // Ensures cooldown starts negative

// Map the keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

// Bullet cooldown
bullet_cooldown_ = room_speed/6;
alarm[0] = bullet_cooldown_;

// Scale variables
x_scale_ = image_xscale;
y_scale_ = image_yscale;

// Hide the solids layer
var solid_layer = layer_get_id("blocks");
layer_set_visible(solid_layer, debug_mode);

