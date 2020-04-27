//Sets speed relative to game level, Points missile in the general direction of the player within a range
speed = 2 + (global.GameLevel*0.2)
direction = point_direction(x,y,global.PlayerX,global.PlayerY)-20+random_range(1,40)
image_angle =  direction+180
deflected = false