function scrGetBoxInFromScales() {

	if isBoxInHands and getUpDownBoxButton and isUnderScales and obScales.currentBox == noone {
		obScales.currentBox = boxInstance
		
		isBoxInHands = false
		obGameLogicMB2.tutorialState = STATE.NONE
		audio_play_sound(sndBoxPut, 1, 0)
		return
	}

	if !isBoxInHands 
		and getUpDownBoxButton 
		and isUnderScales
		and obScales.currentBox > 0
		and obScales.currentBox.hasSticker {
			boxInstance = obScales.currentBox
			obScales.currentBox = noone
			isBoxInHands = true
			obGameLogicMB2.tutorialState = STATE.NUMBER
			audio_play_sound(sndBoxPut, 1, 0)
			return
		}

}