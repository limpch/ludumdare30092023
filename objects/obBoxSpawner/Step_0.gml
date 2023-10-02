
canBeSpawned = !place_meeting(x - 16, y, obBox)
isOutOfArray = array_length(boxes) >= 16 or getted == 16

if timeBeforeNewBox > 0 timeBeforeNewBox-- else {
	if canBeSpawned and !isOutOfArray scrSpawnBox()
	if !canBeSpawned and !isOutOfArray scrBoxesMood()
	if !isOutOfArray and !isOutOfArray {
		timeBeforeNewBox = random_range(timeBeforeNewBoxMin, timeBeforeNewBoxMax)
	}
}

if boxesQueue > 0 and canBeSpawned {
	boxesQueue--
	scrSpawnBox()
}

if boxesQueue == 0 {
	obGameLogicBoxMood.tutorialState = STATE.NONE
}

if boxesQueue == 1 and !canBeSpawned {
	obGameLogicBoxMood.tutorialState = STATE.BOX_MOOD_TWO
}
if boxesQueue == 2 and !canBeSpawned {
	obGameLogicBoxMood.tutorialState = STATE.BOX_MOOD_THREE
}
if boxesQueue == 3 and !canBeSpawned {
	obFinishCheck.hp = 0
	obFinishCheck.loseBy = "Why is it taking you so long to pick up the boxes?"
}