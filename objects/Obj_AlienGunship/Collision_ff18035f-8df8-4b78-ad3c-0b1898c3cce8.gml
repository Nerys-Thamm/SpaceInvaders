//Destroy instance and deal damage to player
instance_destroy()
with(other)
{
	audio_play_sound(Explosion, 1, 0)
	global.AlienCount -= 1
	global.PlayerHealth -= 50
}