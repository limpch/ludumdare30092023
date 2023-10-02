

if creatingSticker {
	image_speed = 1
	if animationSpeed != 0 animationSpeed-- else {
		hasSticker = true
		creatingSticker = false
		animationSpeed = 60
		image_speed = 0
		obGameLogicMB2.tutorialState = STATE.STICKER
	}
}

if hasSticker and !creatingSticker image_index = 3
else if !hasSticker and !creatingSticker image_index = 0

if obPlayer.isUnderPrinter sprite_index = spPrinterSelected
else sprite_index = spPrinter

