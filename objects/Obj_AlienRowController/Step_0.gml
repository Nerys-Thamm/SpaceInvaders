/// @description Insert description here
// You can write your code in this editor
if(global.GameLevel < 8)
{HopDelayMult = 1-(0.05*global.GameLevel)}
else
{HopDelayMult = 0.4}
global.TimeSinceLastHop += delta_time
if(global.TimeSinceLastHop >= 10000000*HopDelayMult)
{
	global.TimeSinceLastHop = 0
	global.DescendThisStep = true
}
else
{
	global.DescendThisStep = false
}