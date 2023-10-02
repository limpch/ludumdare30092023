function scrGetUpDownBox() {
	nextCellXCenter = nextCellX + 8 
	nextCellYCenter = nextCellY + 8
	
	if isStickerInHands == true return -1
	
	if !isBoxInHands boxInstance = instance_place(nextCellXCenter, nextCellYCenter, obBox)
	
	if !instance_exists(boxInstance) and !isBoxInHands {
		var nearestBoxInstance = instance_nearest(x, y, obBox)
		if instance_exists(nearestBoxInstance) and distance_to_object(nearestBoxInstance) < 8 {
			var boxDirection = point_direction(x, y, nearestBoxInstance.x, nearestBoxInstance.y)
			if abs(boxDirection - watchDirection) < 30 {
				boxInstance = nearestBoxInstance
			}
		}
	}
	
	if instance_exists(boxInstance) and !isBoxInHands {
		if !isUnderMehs 
			boxInstance.image_index = 1
		
		if getUpDownBoxButton and !isUnderMehs {
			boxInstance.beenHeld = true
			instance_deactivate_object(boxInstance)
			isBoxInHands = true
			
			if boxInstance.hasSticker obGameLogicMB2.tutorialState = STATE.NUMBER
			
			if !boxInstance.hasSticker and obScales.currentBox < 0 {
				obGameLogicMB2.tutorialState = STATE.SCALES
			}
			audio_play_sound(sndBoxPut, 1, 0)
			return
		}
	}
	
	if isBoxInHands {
		bounds = instance_place(nextCellXCenter, nextCellYCenter, obBounds)
		if instance_exists(bounds) {
			var newWatchDirection = watchDirection + 90
			watchDirection = clamp(newWatchDirection == 360 ? 0 : newWatchDirection, 0, 270) 
		}
		
		if !instance_exists(bounds) and !isUnderMehs and getUpDownBoxButton {
			obGameLogicMB2.tutorialState = STATE.NONE
			instance_activate_object(boxInstance)
			
			boxInstance.x = nextCellXCenter
			boxInstance.y = nextCellYCenter
			isBoxInHands = false
			
			if obGameLogic.tutorialState == STATE.SCALES {
				obGameLogic.tutorialState = STATE.NONE
			}
			audio_play_sound(sndBoxPut, 1, 0)
			return
		}
	}
}