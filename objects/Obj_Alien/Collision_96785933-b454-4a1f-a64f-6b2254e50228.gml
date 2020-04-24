/// @description Insert description here
// You can write your code in this editor
instance_destroy()
with(other)
{
	audio_play_sound(Alien_Attack, 1, 0)
	global.AlienCount -= 1
	global.PlayerHealth -= 100
}