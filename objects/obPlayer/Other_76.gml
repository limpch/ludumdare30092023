if event_data[? "message"] == "down" 
	boxAnimFrame = 13
	
if event_data[? "message"] == "top" 
	boxAnimFrame = 14

if event_data[? "message"] == "step1" 
	audio_play_sound(sndStep1, 0, 0)
	
if event_data[? "message"] == "step2" 
	audio_play_sound(sndStep2, 0, 0)

