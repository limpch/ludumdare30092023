
// WIN
if boxToFinish <= 0 {
	result = "WIN"
	isGameEnd = true
}

// LOSE
if hp <= 0 {
	result = "LOSE"
	isGameEnd = true
}

if isGameEnd {
	if timer > 0 image_alpha = (60 - timer) / 10
	if timer == 0 instance_deactivate_all(1)
	timer--
} else {
	image_alpha = 0
}