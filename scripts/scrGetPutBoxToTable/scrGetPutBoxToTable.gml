function getPutBoxToTable() {
	if isBoxInHands and instance_exists(obVisitor) and !obVisitor.isUpset and boxInstance.number == obVisitor.boxCode and boxInstance.hasSticker  {
		obGameLogic.tutorialState = STATE.TABLE_BOX
	}
	
	if isBoxInHands and isUnderTable and !obTable.isTicket and getUpDownBoxButton {
		isBoxInHands = false
		obTable.boxInstance = boxInstance
		obTable.isBox = true		
		obGameLogicMB2.tutorialState = STATE.NONE
		obGameLogic.tutorialState = STATE.NONE
		obComputer.isTicket = false
		
		return
	}
	
	if !isBoxInHands and obTable.boxInstance != noone and isUnderTable and getUpDownBoxButton {
		isBoxInHands = true
		boxInstance = obTable.boxInstance
		
		obTable.isBox = false
		obTable.boxInstance = noone
		
		if boxInstance.hasSticker obGameLogicMB2.tutorialState = STATE.NUMBER
		
		if instance_exists(obVisitor) and boxInstance.number == obVisitor.boxCode boxInstance.depricated = true
	}
}