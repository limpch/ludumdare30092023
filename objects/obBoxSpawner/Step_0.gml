/// @description Insert description here
// You can write your code in this editor

if timeBeforeNewBox > 0 timeBeforeNewBox-- else {
	var box = instance_create_depth(x, y, depth, obBox)
	timeBeforeNewBox = timeBeforeNewBoxMax
}