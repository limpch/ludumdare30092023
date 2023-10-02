/// @description Insert description here
startSeq = layer_sequence_create("cutScene", room_width / 2, room_height / 2, startScreen)
seqIsEnd = false
seqEndTimer = -1
gameStart = false

enum CUTSCENE {
	ALARM,
	BATHROOM,
	BREAKFAST,
	DOORCLOSE,
	RIDE,
	END
}

currentScene = CUTSCENE.ALARM
sceneTimer = 0
currentFrame = 0

skipTimer = -1