/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_space) and !gameStart {
	var _elem = layer_get_all_elements("cutScene")
	var _getSeqPos = layer_sequence_get_headpos(_elem[0])
	seqEndTimer = 60 - _getSeqPos
	gameStart = true
	return
}

if seqEndTimer != -1 {
	if seqEndTimer > 0 seqEndTimer-- else {
		seqIsEnd = true
	}
}

if seqIsEnd {
	layer_sequence_destroy(startSeq)
	hitSeq = layer_sequence_create("cutScene", room_width / 2, room_height / 2, turnOffAlarm)
	
	var _elem = layer_get_all_elements("cutScene")
	var _getSeq = layer_sequence_get_sequence(_elem[0])
	_getSeq.loopmode = seqplay_oneshot;
	seqIsEnd = false
	seqEndTimer = -1
	alarm[0] = 35
}

if currentScene == CUTSCENE.BATHROOM {
	sceneTimer++
	switch (sceneTimer) {
		case 120:
			currentFrame = 1
			audio_play_sound(sndSwitch2, 1, 0)
			break;
			
		case 260:
			audio_play_sound(sndWaterTapStart, 1, 0)
			break;
			
		case 280:
			water = audio_play_sound(sndWaterSink, 1, 1)
			break;
			
		case 600: 
			audio_stop_sound(water)
			audio_play_sound(sndWaterTapStop, 1, 0)
			currentScene = CUTSCENE.BREAKFAST
			sceneTimer = 0
			break;
			
		default:
			break;
	}
}

if currentScene == CUTSCENE.BREAKFAST {
	sceneTimer++
	if sceneTimer == 1 {
		audio_play_sound(sndBreakfast, 1, 0)
	}
	if sceneTimer == 280 {
		audio_play_sound(sndDoorClose, 1, 0)
		currentScene = CUTSCENE.DOORCLOSE
		sceneTimer = 0
	}
}

if currentScene == CUTSCENE.DOORCLOSE {
	sceneTimer++
	if sceneTimer == 180 {
		currentScene = CUTSCENE.RIDE
		sceneTimer = 0
	}
}

if currentScene == CUTSCENE.END {
	sceneTimer++
	if sceneTimer == 200 {
		room_goto(Room1)
	}
}

if gameStart {
	if keyboard_check_pressed(vk_space) {
		if skipTimer > 0 {
			audio_stop_all()
			room_goto(Room1)
		}
	}

	if keyboard_check_pressed(vk_anykey) {
		skipTimer = 120
	}
	
	if skipTimer > -1 skipTimer--
}