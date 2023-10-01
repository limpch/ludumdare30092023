// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function messageBox(_x, _y, _sprite = -1, _text = -1) constructor {
	x = _x
	y = _y
	
	width = 16
	height = 20
	
	sprite = _sprite
	text = _text
	visible = true
}

function messageBoxDraw(_messageBox) {
	
	if _messageBox.visible {
		var _xs = curvesAnimate(acMessageBox, "x", current_time / 1000 mod 1)
		var _ys = curvesAnimate(acMessageBox, "y", current_time / 1000 mod 1)
	
		var _w = _xs * _messageBox.width
		var _h = _ys * _messageBox.height
	
		var _nx = _messageBox.x - _w / 2
		var _ny = _messageBox.y - _h / 2
	
		draw_sprite_stretched(spMessageBox, 0, _nx, _ny - _ys * 2, _w, _h)
		draw_sprite(spMessageBoxTail, 0, _nx + _w / 2, _ny + _h - 2  - _ys * 2)
	
		if _messageBox.sprite != -1 {
			draw_sprite_ext(_messageBox.sprite, 0, _messageBox.x, _messageBox.y - 2, _xs, _ys, 0, c_white, 1)
		}
	}
	
}