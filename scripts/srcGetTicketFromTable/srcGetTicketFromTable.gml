function getTicketFromTable() {
	if isUnderTable and getUpDownBoxButton and obTable.isTicket and !isVisitorTicket and !obComputer.isTicket {
		obTable.isTicket = false
		
		isVisitorTicket = true
		obGameLogic.tutorialState = STATE.COMPUTER_TICKET
	}
}