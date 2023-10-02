
function putTicket() {
	
	if !isPutTicket and isUpOfTable and !canUpBox and !isSeeBox {
		isPutTicket = true
		if obBoxSpawner.getted == 16 alarm[4] = 5 * 60
		else alarm[4] = 12 * 60
		alarm[0] = 30	
	}
		
}