/// @description Draw the gun
var dir = point_direction(x, y, mouse_x, mouse_y);
var flipped = (mouse_x > x) *2-1;
//draw player
draw_sprite_ext(spr_mcatk, 0, x, y, flipped, 1, 0, image_blend, image_alpha);
//draw the gun
draw_sprite_ext(spr_gun, 0, x-4*flipped, y, 1, flipped, dir, image_blend, image_alpha);
