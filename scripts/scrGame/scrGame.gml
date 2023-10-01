// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boxSpawnerInit() {
	timeBeforeNewBoxMin = 600
	timeBeforeNewBoxMax = 1500
	timeBeforeNewBox = 180
	
	boxesQueue = 0
	
	numbersList = []
	getted = 0
	var excludeNumbers = [9,10,19,20]
	for (var i = 1; i <= 28; i++) {
		if array_contains(excludeNumbers, i) continue
		array_push(numbersList, {
			number: i,
			getted: false
		})
	}
		
	boxes = []
}