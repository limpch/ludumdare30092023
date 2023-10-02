function messageBox(_x, _y, _sprite = -1, _text = -1, _withAnim = true, _image = 0) constructor {
	x = _x
	y = _y
	
	width = 16
	height = 20
	withAnim = _withAnim
	
	sprite = _sprite
	image = _image
	text = _text
	visible = true
}

function messageBoxDraw(_messageBox) {
	
	if _messageBox.visible {
		var _w = 0
		var _h = 0
		
		var _xs = 1
		var _ys = 1
			
		if _messageBox.withAnim {
			_xs = curvesAnimate(acMessageBox, "x", current_time / 1000 mod 1)
			_ys = curvesAnimate(acMessageBox, "y", current_time / 1000 mod 1)
		
			_w = _xs * _messageBox.width
			_h = _ys * _messageBox.height
		} else {
			_w = _messageBox.width
			_h = _messageBox.height
		}
			
		var _nx = _messageBox.x - _w / 2
		var _ny = _messageBox.y - _h / 2
	
		if _messageBox.sprite != -1 {
			draw_sprite_stretched(spMessageBox, 0, _nx, _ny - _ys * 2, _w, _h)
			draw_sprite(spMessageBoxTail, 0, _nx + _w / 2, _ny + _h - 2  - _ys * 2)
			draw_sprite_ext(_messageBox.sprite, _messageBox.image, _messageBox.x, _messageBox.y - 2, _xs, _ys, 0, c_white, 1)
			return
		}
		
		if _messageBox.text != -1 {
			draw_sprite_stretched(spMessageBox, 0, _nx - 5, _ny + 4, _w * 1.55, _h * 0.5)
			draw_sprite(spMessageBoxTail, 0, _nx + _w / 2, _ny + _h - 5  - _ys * 2)
			draw_text(_messageBox.x - 10, _messageBox.y - 10, _messageBox.text)
		}
	}
	
}