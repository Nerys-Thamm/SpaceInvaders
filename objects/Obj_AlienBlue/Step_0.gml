/// @description Insert description here
// You can write your code in this editor
image_angle += 0.0001*delta_time//point_direction(x,y,global.PlayerX,global.PlayerY)
AlienTimeSinceSpawn += delta_time


	x := global.PlayerX + cos(AlienAngle)*AlienCurrentDistance
	y := global.PlayerY + sin(AlienAngle)*AlienCurrentDistance
	AlienAngle += 0.0000005*delta_time*AlienSpeedMultiplier*AlienDirectionMultiplier


if(ChangingDirectionCCW)
{
	if (AlienDirectionMultiplier > -1)
	{
		AlienDirectionMultiplier -= 0.000001 * delta_time
	}
	else
	{
		ChangingDirectionCCW = false
		AlienDirectionMultiplier = -1
	}
}
if(ChangingDirectionCW)
{
	if (AlienDirectionMultiplier < 1)
	{
		AlienDirectionMultiplier += 0.000001 * delta_time
	}
	else
	{
		ChangingDirectionCW = false
		AlienDirectionMultiplier = 1
	}
}

if (AlienCurrentDistance > AlienDistance)
	{
		AlienCurrentDistance -= 0.00005 * delta_time
	}
	else
	{
		AlienCurrentDistance = AlienDistance
		
	}

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

if(AlienDirectionMultiplier == 1 && global.AlienCount > 20)
{
	ChangingDirectionCCW = true
}
else if(AlienDirectionMultiplier == -1 && global.AlienCount > 20)
{
	ChangingDirectionCW = true
}

}

