function scrSpawnBox(){
	var box = instance_create_depth(x, y, depth, obBox)
	box.recentlyCreated = true
	box.beenHeld = false
	box.timeSinceCreation = 0
	timeBeforeNewBox = random_range(timeBeforeNewBoxMin, timeBeforeNewBoxMax)
}