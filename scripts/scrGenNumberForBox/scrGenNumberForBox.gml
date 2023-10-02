function scrGenNumberForBox() {
	if getted != 16 {
		randomize()
		var randomNumber = irandom_range(0, 16)
		
		
		
		while numbersList[randomNumber].getted != false {
			randomize()
			randomNumber = irandom_range(0, 16)
		}
	
		numbersList[randomNumber].getted = true
		
		var finalNumber = numbersList[randomNumber].number
		randomize()
		var firstNumb = randomirandom_range
		
		if finalNumber < 10 finalNumber = string_concat(firstNumb, "0", finalNumber)
		else finalNumber = string_concat(firstNumb, finalNumber)

		return finalNumber
	} else return 0
}