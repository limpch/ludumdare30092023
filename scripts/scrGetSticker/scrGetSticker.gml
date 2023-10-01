function scrGetSticker() {
	if !isStickerInHands and obPrinter.hasSticker and getUpDownBoxButton and topButton and place_meeting(x, y - 16, obPrinter) {
		isStickerInHands = true
		obPrinter.hasSticker = false
		
		obGameLogic.tutorialState = STATE.PLAYER_STICKER
	}
}