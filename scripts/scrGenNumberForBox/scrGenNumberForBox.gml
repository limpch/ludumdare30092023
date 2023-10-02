function scrGenNumberForBox() {
	if getted != 16 {
		randomize()
		var randomNumber = random_range(0, 15)
		
		
		
		while numbersList[randomNumber].getted != false {
			randomize()
			randomNumber = random_range(0, 16)
		}
	
		numbersList[randomNumber].getted = true
		
		var finalNumber = numbersList[randomNumber].number
		randomize()
		var firstNumb = round(random_range(0, 9))
		
		if finalNumber < 10 finalNumber = string_concat(firstNumb, "0", finalNumber)
		else finalNumber = string_concat(firstNumb, finalNumber)

		return finalNumber
	} else return 0
}