function scrBoxesLogicVars() {
	cellPlayerIn = noone
	isSame = true
	
	prevClosestCellPlayer = noone
	closestCellPlayer = noone
	
	isBoxInHands = false
	
	cells = layer_get_all_elements("gridBox")
	
	cellsNearCoords = []
	
	cellSize = 16
	currentCellX = 0
	currentCellY = 0
	
	watchDirection = 0
}