
var canBeSpawned = !place_meeting(x - 16, y, obBox) and array_length(boxes) < 18

if timeBeforeNewBox > 0 timeBeforeNewBox-- else {
	if canBeSpawned scrSpawnBox()
	else scrBoxesMood()
}

if boxesQueue > 0 and canBeSpawned {
	boxesQueue--
	scrSpawnBox()
}



if obFinishCheck.hp - boxesQueue == 2 and !canBeSpawned {
	obGameLogicBoxMood.tutorialState = STATE.BOX_MOOD_TWO
}
if obFinishCheck.hp - boxesQueue == 1 and !canBeSpawned {
	obGameLogicBoxMood.tutorialState = STATE.BOX_MOOD_THREE
}
if obFinishCheck.hp - boxesQueue == 0 and !canBeSpawned {
	obFinishCheck.hp = 0
}
if boxesQueue == 0 and canBeSpawned {
	obGameLogicBoxMood.tutorialState = STATE.NONE
}

