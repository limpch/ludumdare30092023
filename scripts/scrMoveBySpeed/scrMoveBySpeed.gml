function moveBySpeed(){
	if abs(xSpeed) > 0 {
		image_xscale = sign(xSpeed)
		
		for(var i = 0; i < abs(xSpeed); i++) {
			if !place_meeting(x + sign(xSpeed), y, obBounds)
				x += sign(xSpeed)
			else xSpeed = 0
		}
	}
	
	if abs(ySpeed) > 0 {
		for(var j = 0; j < abs(ySpeed); j++) {
			if !place_meeting(x, y + sign(ySpeed), obBounds) {
				y += sign(ySpeed)
			} else ySpeed = 0
		}
	}
}