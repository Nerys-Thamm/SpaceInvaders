/// @description Insert description here
// You can write your code in this editor
instance_destroy()
with(other)
{
	
	global.PlayerScore += 10
	audio_play_sound(Explosion, 1, 0)
	instance_create_depth(x,y,0,Obj_Explosion)
	instance_destroy()
}