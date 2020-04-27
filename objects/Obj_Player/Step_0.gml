//Executes every step

//Sets sprite angle to point towards the mouse
//Adds the number of milliseconds since last step to WeaponCooldown
//Checks if player health is above maximum, sets it to be maximum if so
//Checks if playerhealth is less than 0, if so, makes the player dead and loads gameover screen




image_angle = point_direction(x,y,mouse_x,mouse_y)-90;
WeaponCooldown += delta_time;
if(global.PlayerHealth > global.PlayerHealthMax)
{
	global.PlayerHealth = global.PlayerHealthMax;
}
else if(global.PlayerHealth < 0 && !dead)
{
	sprite_index = Spr_Explosion;
	audio_play_sound(Explosion,1,0);
	dead = true;
	room_goto_next();
}