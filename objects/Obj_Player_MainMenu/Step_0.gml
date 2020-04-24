/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x,mouse_y)-90
WeaponCooldown += delta_time
if(global.PlayerHealth > global.PlayerHealthMax)
{
	global.PlayerHealth = global.PlayerHealthMax
}