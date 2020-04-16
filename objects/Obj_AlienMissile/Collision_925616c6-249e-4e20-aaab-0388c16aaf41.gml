/// @description Insert description here
// You can write your code in this editor
if(deflected)
{
	with(other)
	{
		global.AlienCount -= 1
		global.PlayerScore += 60
		instance_destroy()
	}
}