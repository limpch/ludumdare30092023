/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_space) and !gameStart {
	var _elem = layer_get_all_elements("cutScene")
	var _getSeqPos = layer_sequence_get_headpos(_elem[0])
	seqEndTimer = 60 - _getSeqPos
	gameStart = true
}

if seqEndTimer != -1 {
	if seqEndTimer > 0 seqEndTimer-- else {
		seqIsEnd = true
	}
}

show_debug_message(seqEndTimer)

if seqIsEnd {
	layer_sequence_destroy(startSeq)
	hitSeq = layer_sequence_create("cutScene", room_width / 2, room_height / 2, turnOffAlarm)
	
	var _elem = layer_get_all_elements("cutScene")
	var _getSeq = layer_sequence_get_sequence(_elem[0])
	_getSeq.loopmode = seqplay_oneshot;
	seqIsEnd = false
	seqEndTimer = -1
}

if keyboard_check_pressed(ord("R")) room_restart()