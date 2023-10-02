function getBox() {
	
	var canUpBox = isPutTicket and isUpOfTable and obTable.isBox and !isSeeBox

	if canUpBox and obTable.boxInstance.number == boxCode {
		isSeeBox = true
		alarm[1] = 20
	}
	
	if canUpBox and obTable.boxInstance.number != boxCode {
		isSeeBox = true
		isUpset = true
		alarm[1] = 20
	}
	
}