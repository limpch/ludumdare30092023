function scrSpawnBox(){
	var box = instance_create_depth(x, y, depth, obBox)
	box.recentlyCreated = true
	box.beenHeld = false
	box.timeSinceCreation = 0
	box.number = scrGenNumberForBox()
	array_push(boxes, box)
	timeBeforeNewBox = round(random_range(timeBeforeNewBoxMin, timeBeforeNewBoxMax))
	obFinishCheck.boxToFinish--
}