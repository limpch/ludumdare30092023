function scrSpawnBox() {
	var box = instance_create_depth(x, y, depth, obBox)
	box.recentlyCreated = true
	box.beenHeld = false
	box.timeSinceCreation = 0
	box.number = scrGenNumberForBox()
	array_push(boxes, box)
	randomize()
	timeBeforeNewBox = round(random_range(timeBeforeNewBoxMin, timeBeforeNewBoxMax))
}