
draw_self()

if isTicket {
	draw_sprite(spStickerIcon, 0, x, y)	
}

if isBox {
	if boxInstance.hasSticker draw_sprite(spBoxWithSticker, 0, x, y - 4)
	else draw_sprite(spBox, 0, x, y - 4)
}