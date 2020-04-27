//Destroys Alien, Increments score, decrements alien count
with(other)
{
	global.AlienCount -= 1
	global.PlayerScore += 60
	instance_destroy()
	
}