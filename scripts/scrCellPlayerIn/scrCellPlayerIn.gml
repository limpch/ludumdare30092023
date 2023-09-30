function scrCellPlayerIn(){
	cellPlayerIn = instance_place(x, y, gridCellBox)
	
	if instance_exists(cellPlayerIn) {
		var centerX = cellPlayerIn.x + 7
		var centerY = cellPlayerIn.y + 7
		cellsNearCoords = [
			{x: centerX + 16, y: centerY},
			{x: centerX - 16, y: centerY},
			{x: centerX, y: centerY - 16},
			{x: centerX, y: centerY + 16},
		]
	}
}