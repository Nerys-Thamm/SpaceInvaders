/// Executes every step


//Makes player sprite point towards the mouse, adds time since last frame in milliseconds to
//cooldown.


image_angle = point_direction(x,y,mouse_x,mouse_y)-90;
WeaponCooldown += delta_time;
