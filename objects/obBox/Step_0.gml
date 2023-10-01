/// @description Insert description here
// You can write your code in this editor

depth = -y
image_index = 0

if recentlyCreated {
	timeSinceCreation += 0.05
	var _xMove = curvesAnimate(acBoxCreate, "x", timeSinceCreation)
	x = xstart - _xMove * 16
	if timeSinceCreation >= 1 recentlyCreated = false
}