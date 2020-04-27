/// Execute when spacebar pressed

//Checks if weapon cooldown is complete, if so creates a bullet object at the players position
//The bullet is pointed directly in front of the player object.
//The Lazer_Shoot sound is played and cooldown is reset.
if(WeaponCooldown > 500000)
{
	audio_play_sound(Lazer_shoot, 1, 0);
	sprite_index = Spr_PlayerCharge;

	NewMiddleBullet = instance_create_depth(x,y,0,Obj_Bullet);


	NewMiddleBullet.direction = image_angle+90;
	NewMiddleBullet.speed = 6;

	WeaponCooldown = 0;
}




