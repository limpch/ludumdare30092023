
function scrPutSticker(){
	if isStickerInHands and getUpDownBoxButton and topButton and place_meeting(x, y - 16, obScales) {
		obScales.currentBox.hasSticker = true
		isStickerInHands = false
		obGameLogicMB2.tutorialState = STATE.NONE
	}
}