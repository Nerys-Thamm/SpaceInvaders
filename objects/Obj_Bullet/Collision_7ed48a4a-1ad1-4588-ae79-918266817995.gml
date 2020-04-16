/// @description Insert description here
// You can write your code in this editor
instance_destroy()
with(other)
{
	global.AlienCount -= 1
	global.PlayerHealth += 100
	instance_destroy()
}