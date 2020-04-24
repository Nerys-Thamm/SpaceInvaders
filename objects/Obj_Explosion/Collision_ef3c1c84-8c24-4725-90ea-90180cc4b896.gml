/// @description Insert description here
// You can write your code in this editor
with(other)
{
	audio_play_sound(Explosion, 1, 0)
		instance_create_depth(x,y,0,Obj_Explosion)
		instance_destroy()
}