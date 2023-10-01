draw_self()

if isBoxInHands {
	if !boxInstance.hasSticker draw_sprite(spBox, 0, x, y - boxAnimFrame)
	else draw_sprite(spBoxWithSticker, 0, x, y - boxAnimFrame)
}

if isBoxInHands and !instance_exists(bounds) {
	draw_set_alpha(0.5)
	if !boxInstance.hasSticker draw_sprite(spBox, 0, nextCellXCenter, nextCellYCenter)
	else draw_sprite(spBoxWithSticker, 0, nextCellXCenter, nextCellYCenter)
	draw_set_alpha(1)
}