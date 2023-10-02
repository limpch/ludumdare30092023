// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reviewBox(_x, _y, _stars, _name, _text) constructor {
	x = _x
	y = _y
	
	width = 128
	height = 64
	
	starsNum = _stars
	name = _name
	text = _text
	
	visible = true
}

function drawReview(_review) {
	draw_sprite_stretched(spReviewBorders, 0, _review.x, _review.y, _review.width, _review.height)
	for(var i = 0; i < _review.starsNum; i++) {
		draw_sprite(spSmallStar, 0, _review.x + 10 + i * 6, _review.y + 9)
	}
	
	draw_set_font(fontMain)
	draw_set_color(c_white)
	draw_text(_review.x + 10, _review.y + 14, _review.name)
	draw_set_color(hex($7f708a))
	draw_text_ext(_review.x + 10, _review.y + 26, _review.text, 8, _review.width - 16)
}