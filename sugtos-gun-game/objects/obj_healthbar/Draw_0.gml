draw_self();

if !instance_exists(obj_mc) exit;

draw_health_ = lerp(draw_health_, obj_mc.health_, .25);

draw_set_color(c_red);
draw_rectangle(x+4, y+4, x+123*draw_health_/obj_mc.max_health_, y+11, false);
draw_set_color(c_white);
