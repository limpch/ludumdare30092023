
// WIN
if boxToFinish <= 0 {
	room_goto(rStartGameScreen)
}

// LOSE
if hp <= 0 {
	room_goto(rStartGameScreen)
}