/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,512,384)+AlienAngleMultiplier
AlienTimeSinceSpawn += delta_time
x := 515 + cos(AlienAngle)*AlienDistance
y := 390 + sin(AlienAngle)*AlienDistance
AlienAngle += 0.0000005*delta_time*AlienSpeedMultiplier*AlienDirectionMultiplier
if(AlienDistance > 1 and irandom_range(1,AlienDescendChance) == 1 and AlienTimeSinceSpawn > 300000*40 and AlienCurrentRow >= 4)
{
AlienSpeedMultiplier += 1
AlienCurrentRow -= 1
AlienDistance -= 50
AlienDescendChance = 1000
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
else
{
	AlienDescendChance -= 0.0000001*delta_time
}
move_towards_point(x,y,1)
