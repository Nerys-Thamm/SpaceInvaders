//If Missile collides with shield, change missile angle to be deflected relative to the angle of the shield
//And set deflected to true
if(instance_place(x,y,Obj_Shield))
{
	ShieldAngle = Obj_Shield.direction
DeflectionAngle = 0
if(direction >= ShieldAngle+180)
{
	DeflectionAngle = ShieldAngle+angle_difference(ShieldAngle+180, direction)
}
else if(direction <= ShieldAngle+180) 
{
	DeflectionAngle = ShieldAngle+angle_difference(ShieldAngle+180, direction)
}
else
{
	DeflectionAngle = direction
}
if(!deflected)
{
	audio_play_sound(Missile_Deflect, 1, 0)
	
	direction = DeflectionAngle
	image_angle = direction - 180
}
deflected = true
}