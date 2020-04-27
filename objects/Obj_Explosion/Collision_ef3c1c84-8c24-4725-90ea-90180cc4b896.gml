//Plays explosion sound, Creates another instance of explosion at position of missile, destroys missile
with(other)
{
	audio_play_sound(Explosion, 1, 0)
		instance_create_depth(x,y,0,Obj_Explosion)
		instance_destroy()
}