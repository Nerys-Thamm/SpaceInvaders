/// @description Insert description here
// You can write your code in this editor
if(AliensToCreate > 0 and TimeSinceLastSpawn > 300000)
{
	instance_create_depth(0,0,0,Alien)
	TimeSinceLastSpawn = 0
	AliensToCreate -= 1
}
else if(global.AliensOnTopRow <= 1 and TimeSinceLastSpawn > 900000 and GunShipsToCreate > 0)
{
	instance_create_depth(0,0,0,Obj_AlienGunship)
	TimeSinceLastSpawn = 0
	GunShipsToCreate -= 1
}
else
{
	TimeSinceLastSpawn += delta_time
}