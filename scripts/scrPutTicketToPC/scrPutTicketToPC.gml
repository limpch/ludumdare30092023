function putTicketToPC () {
	
	if isUnderPC and getUpDownBoxButton and isVisitorTicket {
		obComputer.isTicket = true
		isVisitorTicket = false
	}
}