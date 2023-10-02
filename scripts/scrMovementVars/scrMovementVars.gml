function movementVars() {
	maxSpeed = .3
	xSpeed = 0
	ySpeed = 0
	
	xFrac = 0
	yFrac = 0
	
	playerDirectionAngle = 0
	
	isStack = false
	
	isUnderPrinter = false
	isUnderScales = false
	isUnderPC = false
	isUnderTable = false
	isUnderMehs = isUnderScales or isUnderPrinter or isUnderPC or isUnderTable
	
	
	isVisitorTicket = false
}