// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tutorialManager() {
	switch (tutorialState) {
		case STATE.NONE:
			tutorialBox.visible = false
			break;
			
		case STATE.SCALES:
			tutorialBox.visible = true
			tutorialBox.x = obScales.x
			tutorialBox.y = obScales.y - 16
			tutorialBox.sprite = spBoxIcon
			tutorialBox.text = -1
			break;
			
		case STATE.STICKER:
			tutorialBox.visible = true
			tutorialBox.x = obPrinter.x
			tutorialBox.y = obPrinter.y - 16
			tutorialBox.sprite = spStickerIcon
			tutorialBox.text = -1
			break;
			
		default:
			break;
	}
}