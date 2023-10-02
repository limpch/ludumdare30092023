/// @description Insert description here
// You can write your code in this editor

if !gameStart {
	draw_set_font(fBig)
	draw_set_colour(hex($625565))
	draw_set_halign(fa_center)

	draw_text(room_width / 2, room_height - 24, "press space")
	draw_set_halign(fa_left)
}

if currentScene == CUTSCENE.BATHROOM {
	draw_sprite(spBathroom, currentFrame, 0, 0)
}

if currentScene == CUTSCENE.BREAKFAST {
	draw_sprite(spSky, currentFrame, -60 + sceneTimer / 10, 0)
	draw_sprite(spBreakfast, currentFrame, 0, 0)
}

if currentScene == CUTSCENE.DOORCLOSE {
	draw_sprite(spSceneDoor, currentFrame, 0, 0)
}

if currentScene == CUTSCENE.END {
	draw_sprite(spDepot, 5, 0, 0)
	draw_set_alpha(sceneTimer / 60)
	draw_set_color(hex($2e222f))
	draw_rectangle(0, 0, room_width, room_height, 0)
	draw_set_alpha(1)
}

if currentScene == CUTSCENE.RIDE {
	draw_sprite(spRoad, 0, 0, 0)
	draw_sprite(spCyclist, sceneTimer / 20, -120 + sceneTimer * 7, 94)
	draw_sprite(spForegroundRoad, 0, 0, 0)
}

if currentScene == CUTSCENE.DEPOT {
	draw_sprite(spDepot, min(sceneTimer / 20, 5), 0, 0)
}

if skipTimer > 0 {
	draw_set_font(fBig)
	draw_set_colour(hex($625565))
	draw_set_halign(fa_center)
	
	draw_set_alpha(skipTimer / 60)
	draw_text(room_width / 2, room_height - 24, "space to skip")
	draw_set_alpha(1)
	
	draw_set_halign(fa_left)
}