/// @description Insert description here
// You can write your code in this editor

var canBeSpawned = !place_meeting(x - 16, y, obBox)

if timeBeforeNewBox > 0 timeBeforeNewBox-- else {
	if canBeSpawned scrSpawnBox()
	else scrBoxesMood()
}

if boxesQueue > 0 and canBeSpawned {
	boxesQueue--
	scrSpawnBox()
}