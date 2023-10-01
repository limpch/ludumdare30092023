
if currentBox > 0
	and !obPrinter.hasSticker 
	and !obPrinter.creatingSticker 
	and !obPlayer.isStickerInHands
	and !currentBox.hasSticker {
		obPrinter.creatingSticker = true
	}
	
if obPlayer.isUnderScales sprite_index = spScalesSelected
else sprite_index = spScales