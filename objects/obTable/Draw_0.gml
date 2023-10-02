/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

draw_self()

if isTicket {
	draw_sprite(spStickerIcon, 0, x, y)	
}

if isBox {
	if boxInstance.hasSticker draw_sprite(spBoxWithSticker, 0, x, y)
	else draw_sprite(spBox, 0, x, y)
}