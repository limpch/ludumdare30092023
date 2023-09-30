function scrPushAwayFromTexture(){
	if place_meeting(x, y, obBounds) {	
		for(var i = 1; i <= 16; i++) {
			if !place_meeting(x + i, y, obBounds) {
				x += i
				break
			}
			if !place_meeting(x - i, y, obBounds) {
				x -= i	
				break
			}
			if !place_meeting(x, y + i, obBounds) {
				y += i	
				break
			}
			if !place_meeting(x, y - i, obBounds) {
				y -= i	
				break
			}
		}
	}
}

function _pushAway (direction = "x", pixels) {


}