/// @description Insert description here
// You can write your code in this editor
instance_destroy()
with(other)
{
	global.AlienCount -= 1
	global.PlayerScore += 30
	instance_destroy()
}