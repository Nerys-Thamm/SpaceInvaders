//If Deflected, Destroy missile and create explosion object, play explosion sound
if(deflected)
{
	with(other)
	{
	audio_play_sound(Explosion, 1, 0)
	instance_create_depth(x,y,0,Obj_Explosion)
	
	}
	instance_destroy()
}