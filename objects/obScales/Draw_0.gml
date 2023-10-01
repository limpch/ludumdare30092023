/// @description Insert description here
// You can write your code in this editor

draw_self()
if currentBox > 0 {
	if !currentBox.hasSticker {
		draw_sprite(spBox, 0, x, y - 2)
	}
	if currentBox.hasSticker {
		draw_sprite(spBoxWithSticker, 0, x, y - 2)
	}
}

