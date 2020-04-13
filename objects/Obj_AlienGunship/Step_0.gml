/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,global.PlayerX,global.PlayerY)+AlienAngleMultiplier
AlienTimeSinceSpawn += delta_time
x := global.PlayerX + cos(AlienAngle)*AlienDistance
y := global.PlayerY + sin(AlienAngle)*AlienDistance
AlienAngle += 0.0000005*delta_time*AlienSpeedMultiplier*AlienDirectionMultiplier

if(irandom_range(1,500) == 1)
{
instance_create_depth(x,y,0,Obj_AlienMissile)
}






if(global.DescendThisStep)
{
if(AlienSpeedMultiplier < 1)
{AlienSpeedMultiplier -= 0.2}
AlienCurrentRow -= 1
AlienDistance -= 50

if(AlienDirectionMultiplier == 1)
{
	AlienDirectionMultiplier = -1
	AlienAngleMultiplier = 180
}
else
{
	AlienDirectionMultiplier = 1
	AlienAngleMultiplier = 0
}
}

move_towards_point(x,y,1)
