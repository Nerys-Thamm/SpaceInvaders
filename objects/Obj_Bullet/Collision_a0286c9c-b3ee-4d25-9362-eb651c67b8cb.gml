/// @description Insert description here
// You can write your code in this editor
instance_destroy()
with(other)
{
	audio_play_sound(Alien_Hit, 1, 0)
	if(AlienHealth > 1)
	{
		AlienHealth -= 1
		sprite_index = Spr_Alien
	}
	else
	{
	global.AlienCount -= 1
	global.PlayerScore += 20
	instance_destroy()
	}
}