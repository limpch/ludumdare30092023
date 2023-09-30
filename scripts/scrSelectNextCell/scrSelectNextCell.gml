function scrSelectNextCell() {
	if abs(xSpeed) > 0 or abs(ySpeed) > 0 watchDirection = playerDirectionAngle
	
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