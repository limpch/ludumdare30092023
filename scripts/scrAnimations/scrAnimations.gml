// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerAnimation() {
	if abs(xSpeed) == 0 and abs(ySpeed) == 0 {
		sprite_index = spPlayerStay
	}
	if abs(xSpeed) > 0 or abs(ySpeed) > 0 {
		sprite_index = spPlayerRun
	}
}