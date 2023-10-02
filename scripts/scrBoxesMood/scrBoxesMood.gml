function scrBoxesMood() {
	boxesQueue += 1
	
	if obFinishCheck.hp - boxesQueue == 2 and !canBeSpawned {
		obFinishCheck.boxQueueTimesSad += 1
	}
	if obFinishCheck.hp - boxesQueue == 1 and !canBeSpawned {
		obFinishCheck.boxQueueTimesRage += 1
	}
	
	randomize()
	timeBeforeNewBox = random_range(timeBeforeNewBoxMin, timeBeforeNewBoxMax)
}