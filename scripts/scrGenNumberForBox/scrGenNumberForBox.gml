function scrGenNumberForBox() {
	if getted != 23 {
		var randomNumber = random_range(0, 23)
		
		while numbersList[randomNumber].getted != false {
			randomNumber = random_range(0, 23)
		}
	
		numbersList[randomNumber].getted = true
		getted++
	
		return numbersList[randomNumber].number
	} else return 0
}