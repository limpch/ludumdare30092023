/// @description Insert description here
// You can write your code in this editor
draw_set_font(fontMain)
draw_set_color(hex($ab947a))

draw_set_alpha(.5)
for(var i = 0; i < 8; i++) {
	draw_text(x + 4 + 16 * i, y, "0" + string(i + 1))
}

for(var i = 0; i < 8; i++) {
	draw_text(x + 4 + 16 * i, y + 16, "1" + string(i + 1))
}

for(var i = 0; i < 8; i++) {
	draw_text(x + 4 + 16 * i, y + 32, "2" + string(i + 1))
}
draw_set_alpha(1)