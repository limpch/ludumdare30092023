/// @description Insert description here
// You can write your code in this editor

if timeBeforeNewBox > 0 timeBeforeNewBox-- else {
	var box = instance_create_depth(x, y, depth, obBox)
	box.recentlyCreated = true
	box.beenHeld = false
	box.timeSinceCreation = 0
	timeBeforeNewBox = timeBeforeNewBoxMax
}