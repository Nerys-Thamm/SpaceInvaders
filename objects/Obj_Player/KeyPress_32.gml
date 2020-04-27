//Do this when spacebar pressed


//Checks if weapon cooldown is complete, if so creates 3 bullet objects at the players position
//One bullet is pointed directly in front of the player object, the others are pointed at a random angle
//within a range on each side of the first.
//The Lazer_Shoot sound is played and cooldown is reset.

if(WeaponCooldown > 500000)
{
	audio_play_sound(Lazer_shoot, 1, 0);
	sprite_index = Spr_PlayerCharge;
	NewLeftBullet = instance_create_depth(global.PlayerX,global.PlayerY,0,Obj_Bullet);
	NewMiddleBullet = instance_create_depth(global.PlayerX,global.PlayerY,0,Obj_Bullet);
	NewRightBullet = instance_create_depth(global.PlayerX,global.PlayerY,0,Obj_Bullet);
	NewLeftBullet.direction = image_angle+75+irandom_range(0,13);
	NewMiddleBullet.direction = image_angle+90;
	NewRightBullet.direction = image_angle+90+irandom_range(3,15);
	WeaponCooldown = 0;
}




