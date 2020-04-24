/// @description Insert description here
// You can write your code in this editor

if(WeaponCooldown > 500000)
{
	audio_play_sound(Lazer_shoot, 1, 0)
sprite_index = Spr_PlayerCharge
NewLeftBullet = instance_create_depth(global.PlayerX,global.PlayerY,0,Obj_Bullet)
NewMiddleBullet = instance_create_depth(global.PlayerX,global.PlayerY,0,Obj_Bullet)
NewRightBullet = instance_create_depth(global.PlayerX,global.PlayerY,0,Obj_Bullet)
NewLeftBullet.direction = image_angle+75+irandom_range(0,13)
NewMiddleBullet.direction = image_angle+90
NewRightBullet.direction = image_angle+90+irandom_range(3,15)
WeaponCooldown = 0
}




