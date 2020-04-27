

//Executes every step





//Sets the XY coordinates of the alien to a specified angle in a circular path with a specified radius
	x := global.PlayerX + cos(AlienAngle)*AlienCurrentDistance
	y := global.PlayerY + sin(AlienAngle)*AlienCurrentDistance
	
	
image_angle = point_direction(x,y,global.PlayerX,global.PlayerY)

//Makes the alien move in a circle
	AlienAngle += 0.0000005*delta_time*AlienSpeedMultiplier*AlienDirectionMultiplier

//Makes alien gradually change direction on step when bool is enabled
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

//Makes alien gradually move down a row instead of teleporting
if (AlienCurrentDistance > AlienDistance)
	{
		AlienCurrentDistance -= 0.00005 * delta_time
	}
	else
	{
		AlienCurrentDistance = AlienDistance
		
	}

//Checks if Descendthisstep is true, if so, make the alien descend one row
if(global.DescendThisStep)
{


AlienCurrentRow -= 1

//Alien Attacks the player
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
if(irandom_range(1,500) == 1)
{
instance_create_depth(x,y,0,Obj_AlienMissile)
}


