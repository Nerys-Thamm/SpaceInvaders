//Make shield move towards back of player, stop shield from moving in front of the player
BackOfShip = point_direction(x,y,mouse_x,mouse_y)+180

if(angle_difference(BackOfShip, direction) >= 90)
{direction += 0.0005*delta_time}
else if(angle_difference(BackOfShip, direction) <= -90)
{direction -= 0.0005*delta_time}
if(angle_difference(BackOfShip, direction) <= 2)
{direction -= 0.0001*delta_time}
else if(angle_difference(BackOfShip, direction) >= -2)
{direction += 0.0001*delta_time}
image_angle = direction