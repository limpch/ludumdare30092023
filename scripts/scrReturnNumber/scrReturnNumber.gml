function scrReturnNumber(numb) {
	array_map(numbersList, function (el) {
		if el.number == numb 
			return {
				number: numb,
				getted: false
			}
			
		return el
	})
}