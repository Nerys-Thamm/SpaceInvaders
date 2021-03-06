//Executes every step

//Checks if all rows have been spawned for this level, if not spawns Alien, Blue Alien, or healthpack every 18 degrees
//Alien gunships start spawning al level 2, Blue aliens spawn at level 4 and become more common every level
//Healthpacks start spawning at level 3 and become less common with eaach level
if(CurrentSpawnRow <= 4+global.GameLevel)
{
	if(CurrentSpawnAngle <= 378)
	{
		if(random_range(1,20) < 2+(CurrentSpawnRow-5) and global.GameLevel >= 2)
		{
			NewAlien = instance_create_depth(0,0,0,Obj_AlienGunship)
		}
		else if(random_range(1,500) < 2)
		{
			NewAlien = instance_create_depth(0,0,0,Obj_Alien_Special)
		}
		else if(random_range(1,30+global.GameLevel) < 2 and global.GameLevel >= 3)
		{
			NewAlien = instance_create_depth(0,0,0,Obj_HealthPack)
		}
		else if(random_range(1,20) < 2+(global.GameLevel-4) and global.GameLevel >= 4)
		{
			NewAlien = instance_create_depth(0,0,0,Obj_AlienBlue)
		}
		else
		{
			NewAlien = instance_create_depth(0,0,0,Obj_Alien)
		}
		NewAlien.AlienDistance = CurrentSpawnRowDistance
		NewAlien.AlienCurrentRow = CurrentSpawnRow
		NewAlien.AlienSpeedMultiplier = 1
		NewAlien.AlienAngle = CurrentSpawnAngle
		NewAlien.AlienSpeedMultiplier = 1 + ((CurrentSpawnRow-5) * 0.2)
		TimeSinceLastSpawn = 0
		AliensToCreate -= 1
		CurrentSpawnAngle += 18
		global.AlienCount += 1
	}
	else if(CurrentSpawnAngle > 378)
	{
		CurrentSpawnRow += 1
		CurrentSpawnRowDistance += 100
		CurrentSpawnAngle = 0
		
	}
	
}

//When all aliens are destroyed increment level and restart spawning
else if(global.AlienCount == 0)
{
	global.GameLevel += 1
	CurrentSpawnRow = 5
	CurrentSpawnAngle = 0
	CurrentSpawnRowDistance = 350
}
