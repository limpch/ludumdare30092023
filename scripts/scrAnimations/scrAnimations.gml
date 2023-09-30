// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function playerAnimation() {
	depth = -y
	
	if abs(xSpeed) == 0 and abs(ySpeed) == 0 {
		if isBoxInHands sprite_index = spPlayerStayWithBox
		else sprite_index = spPlayerStay
	}
	if abs(xSpeed) > 0 or abs(ySpeed) > 0 {
		if isBoxInHands sprite_index = spPlayerRunWithBox
		else sprite_index = spPlayerRun
	}
	
}