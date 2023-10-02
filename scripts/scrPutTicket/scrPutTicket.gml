
function putTicket() {
	
	if !isPutTicket and isUpOfTable and !canUpBox and !isSeeBox {
		isPutTicket = true
		alarm[4] = 10 * 60
		alarm[0] = 30
	}
		
}