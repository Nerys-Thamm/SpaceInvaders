/// @description Insert description here
// You can write your code in this editor
if(instance_place(x,y,Obj_Shield))
{
	ShieldAngle = Obj_Shield.direction
DeflectionAngle = 0
if(direction >= ShieldAngle+180 and direction <= ShieldAngle + 300)
{
	DeflectionAngle = ShieldAngle+angle_difference(ShieldAngle+180, direction)
}
else if(direction <= ShieldAngle+180 and direction >= ShieldAngle + 60)
{
	DeflectionAngle = ShieldAngle+angle_difference(ShieldAngle+180, direction)
}
else
{
	DeflectionAngle = direction
}
if(!deflected)
{
	
	direction = DeflectionAngle
	image_angle = direction - 180
}
deflected = true
}