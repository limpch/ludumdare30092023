draw_self()

if isBoxInHands {
	draw_sprite(spBox, 1, x, y - boxAnimFrame)
}

draw_set_alpha(0.3)
draw_set_color(c_red)
draw_rectangle(nextCellX, nextCellY, nextCellX + 16, nextCellY + 16, 0)
draw_set_alpha(1)
