

if creatingSticker {
	if !isSoundPlayed {
		audio_play_sound(sndPrinter, 0, 0)
		isSoundPlayed = true
	}
	image_speed = 1
	if animationSpeed != 0 animationSpeed-- else {
		hasSticker = true
		creatingSticker = false
		animationSpeed = 60
		isSoundPlayed = false
		image_speed = 0
		obGameLogic.tutorialState = STATE.STICKER
	}
}

if hasSticker and !creatingSticker image_index = 3
else if !hasSticker and !creatingSticker image_index = 0

if obPlayer.isUnderPrinter sprite_index = spPrinterSelected
else sprite_index = spPrinter

