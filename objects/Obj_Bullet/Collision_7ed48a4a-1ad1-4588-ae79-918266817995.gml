//Destroy instance of bullet, Play Powerup get sound, Heal player, Destroy instance of healthpack
instance_destroy()
with(other)
{
	audio_play_sound(Powerup_Get, 1, 0)
	global.AlienCount -= 1
	global.PlayerHealth += 50
	instance_destroy()
}