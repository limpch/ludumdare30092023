
if sceneTimer >= 0 {
	draw_set_alpha(sceneTimer / 60)
	draw_set_color(hex($2e222f))
	draw_rectangle(0, 0, room_width, room_height, 0)
	draw_set_alpha(1)
	sceneTimer -= 0.5
}
