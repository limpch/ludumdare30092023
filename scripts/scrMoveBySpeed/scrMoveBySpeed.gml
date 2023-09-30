function moveBySpeed(){
	
	if abs(xSpeed) > 0 {
		image_xscale = sign(xSpeed)
		
		if xFrac < 1 xFrac += frac(abs(xSpeed))
		if xFrac >= 1 {
		    xFrac -= 1
			if !place_meeting(x + sign(xSpeed), y, obBounds) x += sign(xSpeed)
		}
		
		for(var i = 0; i < abs(xSpeed); i++) {
			if !place_meeting(x + sign(xSpeed), y, obBounds)
				x += sign(xSpeed)
			else xSpeed = 0
		}
	}
	
	if abs(ySpeed) > 0 {
		
		if yFrac < 1 yFrac += frac(abs(ySpeed))
		if yFrac >= 1 {
		    yFrac -= 1
			if !place_meeting(x, y + sign(ySpeed), obBounds) y += sign(ySpeed)
		}
		
		for(var j = 0; j < abs(ySpeed); j++) {
			if !place_meeting(x, y + sign(ySpeed), obBounds) {
				y += sign(ySpeed)
			} else ySpeed = 0
		}
	}
}