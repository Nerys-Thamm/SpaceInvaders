//If missile hasnt been deflected, destroy missile, deal damage to player, and play explosion sound
//and spawn explosion
if(!deflected)
{
instance_destroy()
with(other)
{
	audio_play_sound(Explosion, 1, 0)
	instance_create_depth(x,y,0,Obj_Explosion)
	global.PlayerHealth -= 50
}
}