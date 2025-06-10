/// @description Create the variables

// Movement variables
speed_ = [0, 0];
max_speed_ = 4;
gravity_ = .5;
acceleration_ = 1;
friction_ = .3;
jump_height_ = -10;
max_health_ = 5;
health_ = max_health_;
invincible_ = false;

// Dash variables
dashing = false;
dash_timer = 0;
dash_duration = 15; // Number of frames the dash lasts
dash_force = 8; // Strength of the dash
dash_cooldown = 30; // Cooldown period before dashing again

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

state = "idle"; // Default state
