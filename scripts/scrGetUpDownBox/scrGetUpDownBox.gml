function scrGetUpDownBox() {
	nextCellXCenter = nextCellX + 8
	nextCellYCenter = nextCellY + 8
	
	if getUpDownBoxButton and !isBoxInHands {
		boxInstance = instance_place(nextCellXCenter, nextCellYCenter, obBox)
		if instance_exists(boxInstance) {
			boxInstance.beenHeld = true
			instance_deactivate_object(boxInstance)
			isBoxInHands = true
			return
		}
	}
	
	if getUpDownBoxButton and isBoxInHands {
		bounds = instance_place(nextCellXCenter, nextCellYCenter, obBounds)
		if !instance_exists(bounds) {
			boxInstance.x = nextCellXCenter
			boxInstance.y = nextCellYCenter
			instance_activate_object(boxInstance)
			
			isBoxInHands = false
			
			return
		}
	}
}