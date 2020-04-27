//Destroy instance of alien
instance_destroy()
with(other)
{
	//play alien attack sound
	audio_play_sound(Alien_Attack, 1, 0)
	//decrease aliencount
	global.AlienCount -= 1
	//damage player
	global.PlayerHealth -= 100
}