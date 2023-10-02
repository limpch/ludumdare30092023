function boxSpawnerInit() {
	timeBeforeNewBoxMin = 2 * 60
	timeBeforeNewBoxMax = 10 * 60
	timeBeforeNewBox = 180
	
	boxesQueue = 0
	
	numbersList = []
	getted = 0
	var excludeNumbers = [9,10]
	for (var i = 1; i <= 18; i++) {
		if array_contains(excludeNumbers, i) continue
		array_push(numbersList, {
			number: i,
			getted: false
		})
	}
		
	boxes = []
	
	canBeSpawned = true
	isOutOfArray = false
}