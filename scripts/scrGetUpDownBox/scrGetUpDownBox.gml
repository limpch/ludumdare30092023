function scrGetUpDownBox() {
	nextCellXCenter = nextCellX + 8 
	nextCellYCenter = nextCellY + 8
	
	if !isBoxInHands boxInstance = instance_place(nextCellXCenter, nextCellYCenter, obBox)
	
	if !instance_exists(boxInstance) and !isBoxInHands {
		var nearestBoxInstance = instance_nearest(x, y, obBox)
		if instance_exists(nearestBoxInstance) and distance_to_object(nearestBoxInstance) < 16 {
			boxInstance = nearestBoxInstance
		}
	}
	
	if instance_exists(boxInstance) and !isBoxInHands {
		boxInstance.image_index = 1
		
		if getUpDownBoxButton  {
			boxInstance.beenHeld = true
			instance_deactivate_object(boxInstance)
			isBoxInHands = true
			return
		}
	}
	
	if isBoxInHands {
		bounds = instance_place(nextCellXCenter, nextCellYCenter, obBounds)
		if instance_exists(bounds) {
			var newWatchDirection = watchDirection + 90
			watchDirection = clamp(newWatchDirection == 360 ? 0 : newWatchDirection, 0, 270) 
		}
			
		if !instance_exists(bounds) and getUpDownBoxButton {
			instance_activate_object(boxInstance)
			
			boxInstance.x = nextCellXCenter
			boxInstance.y = nextCellYCenter
			isBoxInHands = false
			
			return
		}
	}
}