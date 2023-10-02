function goAway() {
	if isCanGoAway {
		ySpeed = -0.002
		
		if place_meeting(x, y + 4, obDoor) and !isGoAway {
			isGoAway = true
			obDoor.image_index = 1
			alarm[2] = 15
		}
	}
}