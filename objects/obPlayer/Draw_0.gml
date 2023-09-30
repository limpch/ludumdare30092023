draw_self()

if isBoxInHands {
	draw_sprite(spBox, 1, x, y - boxAnimFrame)
}



if isBoxInHands and !instance_exists(bounds) {
	draw_set_alpha(0.5)
	draw_sprite(spBox, 0, nextCellXCenter, nextCellYCenter)
	draw_set_alpha(1)
}