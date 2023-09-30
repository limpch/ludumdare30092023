function scrSelectClosestGridCell() {
	
	if instance_exists(cellPlayerIn) {
		var minDistanceIndex = 0
		for(var i = 1; i < array_length(cellsNearCoords); i++) {
			var nearCellCoords = cellsNearCoords[i]
			var prevNearCellCoords = cellsNearCoords[minDistanceIndex]
			if distance_to_point(nearCellCoords.x, nearCellCoords.y) > distance_to_point(prevNearCellCoords.x, prevNearCellCoords.y)
				minDistanceIndex = i
		}
	}
	
	var cellsNearCoord = cellsNearCoords[minDistanceIndex]
	var newClosestcell = instance_place(cellsNearCoord.x, cellsNearCoord.y, gridCellBox)
	
	if instance_exists(newClosestcell) {
		if !instance_exists(closestCellPlayer) closestCellPlayer = newClosestcell
		
		prevClosestCellPlayer = closestCellPlayer
		closestCellPlayer = newClosestcell
		
		if prevClosestCellPlayer.id != closestCellPlayer.id {
			prevClosestCellPlayer.isClosest = false
			closestCellPlayer.isClosest = true
		}
	}
}