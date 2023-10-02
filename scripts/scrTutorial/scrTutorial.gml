function tutorialManager() {
	switch (tutorialState) {
		case STATE.NONE:
			tutorialBox.visible = false
			tutorialBox.visible = false
			break;
			
		case STATE.SCALES:
			tutorialBox.visible = true
			tutorialBox.x = obScales.x
			tutorialBox.y = obScales.y - 16
			tutorialBox.sprite = spBoxIcon
			tutorialBox.image = 0
			tutorialBox.text = -1
			tutorialBox.withAnim = true
			break;
			
		case STATE.STICKER:
			tutorialBox.visible = true
			tutorialBox.x = obPrinter.x
			tutorialBox.y = obPrinter.y - 16
			tutorialBox.sprite = spStickerIcon
			tutorialBox.image = 0
			tutorialBox.text = -1
			tutorialBox.withAnim = true
			break;
			
		case STATE.PLAYER_STICKER:
			tutorialBox.visible = true
			tutorialBox.x = obPlayer.x
			tutorialBox.y = obPlayer.y - 20
			tutorialBox.sprite = spStickerIcon
			tutorialBox.image = 0
			tutorialBox.text = -1
			tutorialBox.withAnim = false
			break;
			
		case STATE.NUMBER:
			tutorialBox.visible = true
			tutorialBox.x = obPlayer.x
			tutorialBox.y = obPlayer.y - 20
			tutorialBox.sprite = -1
			tutorialBox.image = 0
			tutorialBox.text = "#" + obPlayer.boxInstance.number
			tutorialBox.withAnim = false
			break;
		
		case STATE.TICKET:
			tutorialBox.visible = true
			tutorialBox.x = obTable.x
			tutorialBox.y = obTable.y - 16
			tutorialBox.sprite = spStickerIcon
			tutorialBox.image = 0
			tutorialBox.text = -1
			tutorialBox.withAnim = true
			break;
			
		case STATE.COMPUTER_TICKET:
			tutorialBox.visible = true
			tutorialBox.x = obComputer.x
			tutorialBox.y = obComputer.y - 16
			tutorialBox.sprite = spStickerIcon
			tutorialBox.image = 0
			tutorialBox.text = -1
			tutorialBox.withAnim = true
			break;
			
		case STATE.COMPUTER_NUMBER:
			tutorialBox.visible = true
			tutorialBox.x = obComputer.x
			tutorialBox.y = obComputer.y - 20
			tutorialBox.sprite = -1
			tutorialBox.image = 0
			tutorialBox.text = "#" + obVisitor.boxCode
			tutorialBox.withAnim = false
			break;
		
		case STATE.TABLE_BOX:
			tutorialBox.visible = true
			tutorialBox.x = obTable.x
			tutorialBox.y = obTable.y - 16
			tutorialBox.sprite = spBoxIcon
			tutorialBox.image = 0
			tutorialBox.text = -1
			tutorialBox.withAnim = true
			break;
			
		case STATE.BOX_MOOD_TWO:
			tutorialBox.visible = true
			tutorialBox.x = obBoxSpawner.x - 16
			tutorialBox.y = obBoxSpawner.y - 16
			tutorialBox.sprite = spMoods
			tutorialBox.image = 1
			tutorialBox.withAnim = true
			break;
		
		case STATE.BOX_MOOD_THREE:
			tutorialBox.visible = true
			tutorialBox.x = obBoxSpawner.x - 16
			tutorialBox.y = obBoxSpawner.y - 16
			tutorialBox.sprite = spMoods
			tutorialBox.image = 2
			tutorialBox.text = -1
			tutorialBox.withAnim = true
			break;
		
		case STATE.VISITOR_MOOD_ONE:
			tutorialBox.visible = true
			tutorialBox.x = obVisitor.x
			tutorialBox.y = obVisitor.y - 16
			tutorialBox.sprite = spMoods
			tutorialBox.image = 0
			tutorialBox.text = -1
			tutorialBox.withAnim = true
			break;
			
		case STATE.VISITOR_MOOD_TWO:
			tutorialBox.visible = true
			tutorialBox.x = obVisitor.x
			tutorialBox.y = obVisitor.y - 16
			tutorialBox.sprite = spMoods
			tutorialBox.image = 1
			tutorialBox.text = -1
			tutorialBox.withAnim = true
			break;
			
		case STATE.VISITOR_MOOD_THREE:
			tutorialBox.visible = true
			tutorialBox.x = obVisitor.x
			tutorialBox.y = obVisitor.y - 16
			tutorialBox.sprite = spMoods
			tutorialBox.image = 2
			tutorialBox.text = -1
			tutorialBox.withAnim = true
			break;
			
		default:
			break;
	}
}