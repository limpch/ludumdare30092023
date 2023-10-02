function getBox() {
	
	canUpBox = isUpOfTable and obTable.isBox and !isSeeBox
	
	if canUpBox {
		obPlayer.isVisitorTicket = false
		obTable.isTicket = false
	}

	if canUpBox and obTable.boxInstance.number == boxCode {
		isSeeBox = true
		alarm[1] = 60
	
		isGetBox = true
		boxWithSticker = obTable.boxInstance.hasSticker
		
		obBoxSpawner.boxes = array_filter(obBoxSpawner.boxes, function (box) {
			return obTable.boxInstance.id != box.id
		})
		
		obTable.isBox = false
		obTable.boxInstance = noone
		
		if !isUpset obGameLogicVisitorMood.tutorialState = STATE.VISITOR_MOOD_ONE
		
		return
	}
	
	if canUpBox and obTable.boxInstance.number != boxCode {
		isSeeBox = true
		isUpset = true
		alarm[1] = 60
		
		obBoxSpawner.boxes = array_map(obBoxSpawner.boxes, function (box) {
			if boxCode == box.number
				box.depricated = true
				
			return box
		})
	}
	
}