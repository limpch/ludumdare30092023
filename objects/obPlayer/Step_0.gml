movementBinds()

xSpeed = (rightButton - leftButton) * maxSpeed
ySpeed = (downButton - topButton) * maxSpeed
playerDirectionAngle = point_direction(x, y, x + xSpeed, y + ySpeed)

if abs(xSpeed) > 0 xSpeed = lengthdir_x(maxSpeed, playerDirectionAngle)
if abs(ySpeed) > 0 ySpeed = lengthdir_y(maxSpeed, playerDirectionAngle)

moveBySpeed()

scrCellPlayerIn()
scrSelectClosestGridCell()
