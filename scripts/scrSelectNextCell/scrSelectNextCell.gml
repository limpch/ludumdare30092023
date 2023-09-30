function scrSelectNextCell() {
	if rightButton - leftButton != 0 or downButton - topButton != 0 watchDirection = playerDirectionAngle
	
	switch(watchDirection) {
		case 0: 
			nextCellX = currentCellX + 16
			nextCellY = currentCellY
			break
		case 90: 
			nextCellX = currentCellX
			nextCellY = currentCellY - 16
			break
		case 180: 
			nextCellX = currentCellX - 16
			nextCellY = currentCellY
			break
		case 270: 
			nextCellX = currentCellX
			nextCellY = currentCellY + 16
			break
	}
	
}