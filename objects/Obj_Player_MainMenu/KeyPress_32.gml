/// @description Insert description here
// You can write your code in this editor

if(WeaponCooldown > 500000)
{
	audio_play_sound(Lazer_shoot, 1, 0)
sprite_index = Spr_PlayerCharge

NewMiddleBullet = instance_create_depth(x,y,0,Obj_Bullet)


NewMiddleBullet.direction = image_angle+90
NewMiddleBullet.speed = 6

WeaponCooldown = 0
}




