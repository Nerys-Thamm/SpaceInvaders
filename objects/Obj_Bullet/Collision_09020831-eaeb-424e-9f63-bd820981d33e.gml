//Increment player score, destroy bullet, Create explosion object at position of missile
instance_destroy()
with(other)
{
	
	global.PlayerScore += 10
	audio_play_sound(Explosion, 1, 0)
	instance_create_depth(x,y,0,Obj_Explosion)
	instance_destroy()
}