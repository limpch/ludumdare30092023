
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
	//if timer > 0 //image_alpha = (60 - timer) / 10
	if timer == 0 instance_deactivate_all(1)
	timer--
	
	if result == "WIN" and image_alpha = 0 {
		image_alpha = 1
		audio_stop_all()
		audio_play_sound(sndSwitch2, 0, 0)
		audio_play_sound(sndWin, 0, 0)
		
		overallPoints = (visitorsHappy * 1) + (
		visitorsSad * .5) + (visitorsRage * 0) + (visitorsDoesntGetBox * - 2) + 4
		stars = 4//round(overallPoints / 4)
		alarm[2] = 60
	}
	
	if result == "LOSE" and image_alpha = 0 {
		alarm[1] = 180
		image_alpha = 1
		audio_stop_all()
		audio_play_sound(sndSwitch2, 0, 0)
	}
	
} else {
	image_alpha = 0
}



if canRestart {
	if keyboard_check_pressed(vk_space) {
		audio_stop_all()
		room_restart()
	}
}

if keyboard_check(vk_control) and keyboard_check(vk_shift) and keyboard_check(ord("W")) {
	boxToFinish = 0
}