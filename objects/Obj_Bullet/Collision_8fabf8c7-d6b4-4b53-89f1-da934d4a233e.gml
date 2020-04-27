///Play alien hit sound, destroy instance of alien and bullet, increase player score

instance_destroy()
with(other)
{
	audio_play_sound(Alien_Hit, 1, 0)
	global.AlienCount -= 1
	global.PlayerScore += 20000
	instance_destroy()
}