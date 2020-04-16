/// @description Insert description here
// You can write your code in this editor
if(deflected)
{
	with(other)
	{
		global.AlienCount -= 1
		global.PlayerScore += 40
		instance_destroy()
	}
}