//Sets Time between row descent according to game level for scaled difficulty, capped at lvl 8
//Sets DescendThisStep to true after the time has elapsed, then false on the next step
//This makes aliens move down 1 row
if(global.GameLevel < 8)
{HopDelayMult = 1-(0.05*global.GameLevel)}
else
{HopDelayMult = 0.2}
if(global.AlienCount < 20 && global.GameLevel >= 3)
{
	HopDelayMult = 0.2
}
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