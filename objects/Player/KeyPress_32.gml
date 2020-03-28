/// @description Insert description here
// You can write your code in this editor

if(WeaponCooldown > 1000000)
{
NewLeftBullet = instance_create_depth(512,384,0,Obj_Bullet)
NewMiddleBullet = instance_create_depth(512,384,0,Obj_Bullet)
NewRightBullet = instance_create_depth(512,384,0,Obj_Bullet)
NewLeftBullet.direction = image_angle+80
NewMiddleBullet.direction = image_angle+90
NewRightBullet.direction = image_angle+100
WeaponCooldown = 0
}



