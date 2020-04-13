/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,global.PlayerX,global.PlayerY)
AlienTimeSinceSpawn += delta_time
x := global.PlayerX + cos(AlienAngle)*AlienDistance
y := global.PlayerY + sin(AlienAngle)*AlienDistance
AlienAngle += 0.0000005*delta_time*AlienSpeedMultiplier*AlienDirectionMultiplier
if(global.DescendThisStep)
{


AlienCurrentRow -= 1
if(AlienDistance <= 50)
{
	global.PlayerHealth -= 50
	global.AlienCount -= 1
	instance_destroy()
}
AlienDistance -= 50
if(AlienSpeedMultiplier < 1)
{AlienSpeedMultiplier -= 0.2}
if(AlienDirectionMultiplier == 1)
{
	AlienDirectionMultiplier = -1
}
else
{
	AlienDirectionMultiplier = 1
}
}

move_towards_point(x,y,1)